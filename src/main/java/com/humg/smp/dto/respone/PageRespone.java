package com.humg.smp.dto.respone;

import java.util.List;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PageRespone<T> {
    List<T> content;
    Integer totalRecords;
    Integer pageSize;
    Integer page;
    Integer totalPages;

}
