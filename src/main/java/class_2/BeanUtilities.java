package class_2;

import static org.apache.commons.beanutils.BeanUtils.populate;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class BeanUtilities {
    
    public static void populateBean(Object formBean, HttpServletRequest request) {
        populateBean(formBean, request.getParameterMap());
    }
    
    public static void populateBean(Object bean, Map<String,?> propertyMap) {
        try {
            populate(bean,propertyMap);
        }catch (Exception e){
            System.out.println(e);
        }
    }

}