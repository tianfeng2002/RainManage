package cn.Rain.controll;

import cn.Rain.pojo.Rainquality;
import cn.Rain.service.RainqualityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/Rain")
public class RainqualityControll {
    @Resource
    RainqualityService rainqualityService;

    //查询
    @RequestMapping(value = "/Rainlist")
    public String Rainlist(@RequestParam(value = "rainquality", required = false)
                                   Rainquality rainquality, Model model) {
        System.out.println("进来查询");
        List<Rainquality> rainqualities = rainqualityService.selectRainlist(rainquality);
        model.addAttribute("rainqualities", rainqualities);
        return "index";
    }

    //跳转新增
    @RequestMapping(value = "/tadd")
    public String tadd() {
        return "addRa";
    }

    //新增
    @RequestMapping(value = "/add")
    public String add(Rainquality rainquality) {
        System.out.println("新增=======================conn");
        if (rainqualityService.insert(rainquality)) {
            System.out.println("新增成功");
            return "redirect:/Rain/Rainlist";
        }
        System.out.println("新增失败");
        return "addRa";
        /*Date date = new Date();
        SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
        String time = sdf.format(date);
        rainquality.setDistrictName(time);
        if(rainqualityService.insert(rainquality)){
            System.out.println("新增成功");
            return "redirect:/Rain/Rainlist";
        }
        System.out.println("新增失败");
        return "addRa";*/
    }

    //删除
    @RequestMapping("dele")
    public String dele(Integer id){
        if (rainqualityService.dele(id)) {
            System.out.println("删除成功");
            return "redirect:/Rain/Rainlist";
        }
        System.out.println("删除失败");
        return "index";
    }

}
