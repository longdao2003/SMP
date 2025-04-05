package com.humg.smp.service.classinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.entity.ClassInfo;
import com.humg.smp.repository.ClassInfoRepository;

@Service
public class ClassInfoServiceImpl  implements ClassInfoService{

    @Autowired
    ClassInfoRepository classInfoRepository;

    @Override
    public List<ClassInfo> getClassInfo() {
        return classInfoRepository.findAll();
    }
    
}
