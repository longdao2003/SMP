package com.humg.smp.mapping;

import com.humg.smp.dto.respone.PageInfo;
import com.humg.smp.dto.respone.PageRespone;


public class PageMapping {
        public static PageInfo toInfo(PageRespone<?> pageRespone){
        return new PageInfo(pageRespone.getTotalRecords(), pageRespone.getPageSize(), pageRespone.getPage(), pageRespone.getTotalPages());
    }
}
