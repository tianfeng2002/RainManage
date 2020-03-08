package cn.Rain.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class Rainquality {
    private Integer id;
    private String districtName;
    private String monitorTime;
    private Integer rain;
    private String monitoringStation;
    private String monitoringAddress;
}
