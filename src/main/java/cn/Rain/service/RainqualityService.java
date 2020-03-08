package cn.Rain.service;

import cn.Rain.pojo.Rainquality;

import java.util.List;

public interface RainqualityService {
    //查询
    List<Rainquality> selectRainlist(Rainquality rainquality);

    //新增
    Boolean insert(Rainquality rainquality);

    //删除
    boolean dele(Integer id);
}
