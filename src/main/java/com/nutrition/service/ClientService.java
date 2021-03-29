package com.nutrition.service;


import com.nutrition.entity.client.Client;
import com.nutrition.entity.client.indicators.Anthropometry;
import com.nutrition.entity.client.indicators.Result;
import com.nutrition.repository.AnthropRepository;
import com.nutrition.repository.ClientRepository;
import com.nutrition.repository.ResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class ClientService {



    @Autowired
    ClientRepository clientRepository;

    @Autowired
    AnthropRepository anthropRepository;

    @Autowired
    ResultRepository resultRepository;

    public List<Client> allClients() {
        return clientRepository.findAll();
    }

    public boolean deleteClient(Long clientId) {
        if (clientRepository.findById(clientId).isPresent()) {
            clientRepository.deleteById(clientId);
            return true;
        }
        return false;
    }

    public Client findById(long id){

        Client client = clientRepository.getOne(id);

        return client;

    }

    public Client findByName(String name){
        Client client = new Client();
        client = clientRepository.findClientByUserUsername(name);
        return client;
    }

    public void saveClient(Client client){
        clientRepository.save(client);
    }

    public Client findClientByUserId(Long id){
        Client client = clientRepository.findClientByUserId(id);
        return client;
    }

    public void saveAnthropmetry(Anthropometry anthropometry){
        anthropRepository.save(anthropometry);
    }

    public void saveResult(Result result){
        resultRepository.save(result);
    }


}
