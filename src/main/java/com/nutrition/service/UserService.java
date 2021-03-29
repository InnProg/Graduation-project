package com.nutrition.service;



import com.nutrition.entity.Role;
import com.nutrition.entity.User;
import com.nutrition.entity.client.Client;
import com.nutrition.entity.history.Action;
import com.nutrition.entity.history.History;
import com.nutrition.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {

    //EntityManager является аналогом Connection
    //Каждый экземпляр EntityManager связан с экземпляром EntityTransaction, что позволяет управлять транзакциями
    @PersistenceContext
    private EntityManager em;

    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    ClientRepository clientRepository;

    @Autowired
    HistoryRepository historyRepository;

    @Autowired
    ActionRepository actionRepository;

    //Класс для хеширования паролей
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;



    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return user;
    }


    public User findUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findUserByUsername(username);
        return user;
    }


    public User findUserById(Long userId) {
        Optional<User> userFromDb = userRepository.findById(userId);
        return userFromDb.orElse(new User());
    }

    public List<User> allUsers() {
        return userRepository.findAll();
    }


    public boolean saveUser(User user) {
        User userFromDB = userRepository.findByUsername(user.getUsername());
        if (userFromDB != null) {
            return false;
        }

        if(user.getRole()==null) {

            //Сохраняем пользователя и присваиваем роль
            user.setRoles(Collections.singleton(new Role(1L, "ROLE_CLIENT")));
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
            userRepository.save(user);

            //Сохраняем историю действия
            addHistory(user);

            //Сохраняем клиента
            Client  client = new Client();
            client.setUser(user);
            clientRepository.save(client);
        }

        else if(user.getRole()!=null && user.getRole().equals("ROLE_SPECIALIST")) {
            user.setRoles(Collections.singleton(new Role(2L, user.getRole())));
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
            userRepository.save(user);
            addHistory(user);
        }
        else if(user.getRole()!=null && user.getRole().equals("ROLE_ADMIN")){
            user.setRoles(Collections.singleton(new Role(3L, user.getRole())));
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
            userRepository.save(user);
            addHistory(user);
        }


        return true;
    }

    public boolean deleteUser(Long userId) {
        if (userRepository.findById(userId).isPresent()) {
            userRepository.deleteById(userId);
            return true;
        }
        return false;
    }

    private void addHistory(User user){
        History history = new History();
        history.setUser(user);
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        history.setDate(dateFormat.format(date));
        history.setActions(Collections.singleton(new Action(2L,"REGISTRATION")));
        historyRepository.save(history);
    }


    /*
    public List<User> usergtList(Long idMin) {
        return em.createQuery("SELECT u FROM User u WHERE u.id > :paramId", User.class)
                .setParameter("paramId", idMin).getResultList();
    }
*/
}
