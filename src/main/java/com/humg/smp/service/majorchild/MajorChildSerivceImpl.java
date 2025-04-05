package com.humg.smp.service.majorchild;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.entity.MajorChild;
import com.humg.smp.repository.MajorChildRepository;
@Service
public class MajorChildSerivceImpl implements MajorChildService {

    @Autowired
    MajorChildRepository majorChildRepository;

    @Override
    public List<MajorChild> getAll() {
        return majorChildRepository.findAll();
    }
    
}
