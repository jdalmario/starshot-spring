package com.starshot.service;

import com.starshot.domain.User;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean performLogin(User user) {
        if (user.getUsername().equals("developer") && user.getPassword().equals("devpassword")) {
            return true;
        }
        return false;
    }
}
