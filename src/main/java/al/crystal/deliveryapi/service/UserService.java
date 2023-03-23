package al.crystal.deliveryapi.service;

import al.crystal.deliveryapi.model.User;
import al.crystal.deliveryapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> getCustomers() {
        return userRepository.findAll().stream().filter(user -> user.getIsAdmin().equals(false)).collect(Collectors.toList());
    }
}
