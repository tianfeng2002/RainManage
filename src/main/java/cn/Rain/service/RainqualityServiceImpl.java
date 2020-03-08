package cn.Rain.service;

import cn.Rain.mapper.RainqualityMapper;
import cn.Rain.pojo.Rainquality;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RainqualityServiceImpl implements RainqualityService {

    @Resource
    private RainqualityMapper rainqualityMapper;

    //查询
    @Override
    public List<Rainquality> selectRainlist(Rainquality rainquality) {
        return rainqualityMapper.selectRainlist(rainquality);
    }

    //新增
    @Override
    public Boolean  insert(Rainquality rainquality) {
        boolean flag = false;
        Integer check = rainqualityMapper.insert(rainquality);
        System.out.println("新增=======================impl");
        if(check>0){
            flag=true;
        }
        return flag;
    }

    @Override
    public boolean dele(Integer id) {
        boolean flag = false;
        Integer check = rainqualityMapper.dele(id);
        System.out.println("删除=======================impl");
        if(check>0){
            flag=true;
        }
        return flag;
    }

}
