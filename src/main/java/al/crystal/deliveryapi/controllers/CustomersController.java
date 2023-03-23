package al.crystal.deliveryapi.controllers;

import al.crystal.deliveryapi.model.User;
import al.crystal.deliveryapi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200")
public class CustomersController {
    @Autowired
    private UserService service;
    @GetMapping("/customers")
//    @PreAuthorize("hasAnyAuthority(false) or hasAnyAuthority(true)")
    public List<User> getAllCustomers(){
        return service.getCustomers();
    }

}
