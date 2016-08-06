package top.cardone.usercenter.func.userDepartment.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 用户与部门 - 删除
 */
@Component("/web-api/v1/usercenter/userDepartment/d0004.json")
public class D0004Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        return ApplicationContextHolder.getBean(UserDepartmentService.class).deleteCache(inputMap);
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}
