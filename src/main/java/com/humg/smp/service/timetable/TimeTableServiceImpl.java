package com.humg.smp.service.timetable;

import java.sql.Time;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.humg.smp.entity.ClassInfo;
import com.humg.smp.entity.Period;
import com.humg.smp.entity.Room;
import com.humg.smp.entity.Subject;
import com.humg.smp.entity.Term;
import com.humg.smp.entity.Timetable;
import com.humg.smp.entity.WeekDays;
import com.humg.smp.repository.ClassInfoRepository;
import com.humg.smp.repository.PeriodRepository;
import com.humg.smp.repository.RoomRepository;
import com.humg.smp.repository.SubjectRepository;
import com.humg.smp.repository.TermRepository;
import com.humg.smp.repository.TimeTableRepository;
import com.humg.smp.repository.UserRepository;
import com.humg.smp.repository.WeeksDaysRepository;

@Service
public class TimeTableServiceImpl implements TimeTableService  {
    Random r=new Random();

    @Autowired
    TimeTableRepository timeTableRepository;
    @Autowired
    SubjectRepository subjectRepository;
    @Autowired
    PeriodRepository periodRepository;
    @Autowired
    RoomRepository roomRepository;
    @Autowired
    TermRepository termRepository;
    @Autowired
    WeeksDaysRepository weekDaysRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    ClassInfoRepository classInfoRepository;




    
    private Timetable generateTimeTableData(Long termId) {        
        
        Subject subject=subjectRepository.findRandomSubject();
        Period period=periodRepository.findRandomPeriod();
        Room room=roomRepository.findRandomRoom();
        Term term=termRepository.findById(termId).get();
        ClassInfo classInfo=classInfoRepository.findRandomClassInfo();
        WeekDays weekDays=weekDaysRepository.findRandomWeeksDays();

        
      

        return  Timetable.builder()
        .code(this.randomSubjectCode())
        .subject(subject)            // instance của Subject
        .period(period)              // instance của Period
        .room(room)                  // instance của Room
        .term(term)                  // instance của Term
        .weekDays(weekDays)          // instance của WeekDays
        .remainStudent(30L)
        .user(null)               // instance của User (giáo viên)
        .classInfo(classInfo)        // instance của ClassInfo
        .build();
    }




    private String randomSubjectCode() {
        String res;
        do {
            res = ""+randomLetter() + randomLetter() + randomLetter();
        } while (timeTableRepository.existsByCode(res)); 
        return res;
    }

    private char randomLetter(){
        return (char) (r.nextBoolean() ? 'A' + r.nextInt(26) : 'a' + r.nextInt(26));
    }




    @Override
    public void generateTimeTableInTerm(Long termId) {
        Timetable timetable=this.generateTimeTableData(termId);
        timeTableRepository.save(timetable);
        System.out.println(timetable);
        
    }




    @Override
    public void deleteTimeTableInTerm(Long termId) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'deleteTimeTableInTerm'");
    }




    @Override
    public List<Timetable> getAllTimeTableInTerm(Long termId) {
        return timeTableRepository.findByTermId(termId);
    }




}
