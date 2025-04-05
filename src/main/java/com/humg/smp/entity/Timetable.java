package com.humg.smp.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Timetable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column(unique = true)
    private String code;

    @ManyToOne
    @JoinColumn(name = "subject_id", nullable = false)  // Khóa ngoại liên kết với bảng Subject
    private Subject subject;


    @ManyToOne
    @JoinColumn(name = "period_id", nullable = false)  // Khóa ngoại liên kết với bảng Subject
    private Period period;


    @ManyToOne
    @JoinColumn(name = "room_id", nullable = false)  
    private Room room;

    @ManyToOne
    @JoinColumn(name = "term_id", nullable = false)  
    private Term term;

    @ManyToOne
    @JoinColumn(name = "week_days_id", nullable = false)  
    private WeekDays weekDays;

    @Column(name="remain_student", nullable = false)
    private Long remainStudent;


    @OneToOne
    @JoinColumn(name="teacher_id")
    private User user; 


    @ManyToOne
    @JoinColumn(name="class_info_id", nullable = false)
    private ClassInfo classInfo;


@ManyToMany
@JoinTable(
    name = "student_timetable", // Tạo bảng trung gian
    joinColumns = @JoinColumn(name = "timetable_id"),  // Khóa ngoại đến Timetable
    inverseJoinColumns = @JoinColumn(name = "student_id") // Sửa lại đúng tên cột
)
private List<User> users;

}
