package com.humg.smp.service.timetable;

import java.util.List;

import com.humg.smp.entity.Timetable;

public interface TimeTableService {
    
    void generateTimeTableInTerm(Long termId);

    void deleteTimeTableInTerm(Long termId);

    List<Timetable> getAllTimeTableInTerm(Long termId);

    


}
