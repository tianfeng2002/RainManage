package cn.Rain.mapper;

import cn.Rain.pojo.Rainquality;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RainqualityMapper {
    //查询
    List<Rainquality> selectRainlist(Rainquality rainquality);

    //新增
    int insert(Rainquality rainquality);

    //删除
    Integer dele(@Param("id") Integer id);

}
