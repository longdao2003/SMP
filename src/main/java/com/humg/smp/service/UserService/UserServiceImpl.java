package com.humg.smp.service.UserService;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.dto.request.LoginDTO;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.User;
import com.humg.smp.mapping.UserMapping;
import com.humg.smp.repository.UserRepository;

@Service
public class UserServiceImpl  implements UserService{


    @Autowired
    UserRepository userRepository;
    @Override
    public User getUser(LoginDTO loginDTO) throws RuntimeException{
        
        User u =userRepository.findByIdAndPassword(loginDTO.getUserID(), loginDTO.getPassword())
            .orElseThrow(() -> new RuntimeException("Tài khoản hoặc mật khẩu không chính xác"));
        if (!u.getActiveFlag()){
            throw new RuntimeException("Tài khoản không còn được hoạt động");
        }  
        return u;
    }
@Override
public List<UserRespone> getAllUser() {

    return userRepository.findAll().stream()
    .map(UserMapping::toRespone) 
    .collect(Collectors.toList());
}
    
}