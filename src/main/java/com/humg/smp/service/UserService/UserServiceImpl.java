package com.humg.smp.service.UserService;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.humg.smp.dto.request.LoginDTO;
import com.humg.smp.dto.request.UserRequest;
import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.ClassInfo;
import com.humg.smp.entity.Profile;
import com.humg.smp.entity.User;
import com.humg.smp.entity.UserRole;
import com.humg.smp.mapping.UserMapping;
import com.humg.smp.repository.ClassInfoRepository;
import com.humg.smp.repository.GenderRepository;
import com.humg.smp.repository.MajorChildRepository;
import com.humg.smp.repository.ProfileRepository;
import com.humg.smp.repository.RoleRepository;
import com.humg.smp.repository.UserRepository;
import com.humg.smp.repository.UserRoleRepository;

@Service
public class UserServiceImpl  implements UserService{
    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    // @Autowired
    // StatusRepository statusRepository;

    // @Autowired
    // ClassInfoRepository classInfoRepository;

    // @Autowired
    // GenderRepository genderRepository;

    // @Autowired
    // MajorChildRepository majorChildRepository;

    @Autowired
    ProfileRepository profileRepository;

    @Autowired
    UserRoleRepository userRoleRepository;

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
    public PageRespone<UserRespone> getAllUser(int pageSize, int page) {
        // TODO Auto-generated method stub
        Pageable pageable = PageRequest.of(page, pageSize);

        Page<User> userPage=userRepository.findAll(pageable);
        List<User> users = userPage.getContent();
        List<UserRespone> userRespones=users.stream().map(UserMapping::toRespone).toList();
        return new PageRespone<UserRespone>( userRespones, userPage.getTotalPages() , pageSize, page, userPage.getSize());        
    }
    @Override
    public void createUser(UserRequest userRequest) throws RuntimeException {
        
        Profile profile=new Profile();
        profile.setIdentityCard(userRequest.getIdenti_card());
        profileRepository.save(profile);

        User user=UserMapping.toEntity(userRequest);
        user.setProfile(profile);
        userRepository.save(user);
        UserRole userRole =new UserRole();
        userRole.setUser(user);
        userRole.setRole(roleRepository.findByCode(userRequest.getCodeRole()));
        userRoleRepository.save(userRole);
                
    }
    @Override
    public Profile getUserProfileById(Long userId) throws RuntimeException {
        User u= userRepository.findById(userId).orElseThrow(() -> new RuntimeException("Người dùng không tồn tại"))  ;  
        if (u.getProfile()==null){
            throw new RuntimeException("Profile không tồn tại ");
        }
        return u.getProfile();
    }
    @Override
    public void deleteUser(Long userId) {
        User u=userRepository.findById(userId).get();
        u.setActiveFlag(!u.getActiveFlag());
        userRepository.save(u);
    }

    
}