package cn.Rain.tools;


import cn.Rain.pojo.Rainquality;
import cn.Rain.service.RainqualityService;
import cn.Rain.service.RainqualityServiceImpl;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.context.ServletContextAware;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;

/**
 * 初始加载查询数据
 */
public class InitDataListener implements InitializingBean, ServletContextAware {
    @Resource
    private RainqualityServiceImpl rainqualityService;


    @Override
    public void afterPropertiesSet() throws Exception {
    }

    //查询页面
    @Override
    public void setServletContext(ServletContext arg0) {
        List<Rainquality> rainqualities = rainqualityService.selectRainlist(null);
        arg0.setAttribute("rainqualities", rainqualities);
    }

}