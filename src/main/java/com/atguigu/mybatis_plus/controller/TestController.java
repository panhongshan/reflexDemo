package com.atguigu.mybatis_plus.controller;

import com.alibaba.fastjson.JSON;
import com.atguigu.mybatis_plus.entity.*;
import com.atguigu.mybatis_plus.service.ReflectionService;
import com.atguigu.mybatis_plus.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * @author PHS
 * @version 1.0
 * @date 2021/12/13 21:55
 */
@RestController
public class TestController {


    static Map<String, Object> map = new HashMap<>();

    static {
        map.put("1", new User());
        map.put("2", new User2());
        map.put("3", new User3());
        map.put("4", new User4());
        map.put("5", new User5());
    }

    @Autowired
    private ApplicationContext applicationContext;
    @Autowired
    private ReflectionService reflectionService;
    @Autowired
    private UserService userService;

    /**
     * 成功的！！！
     * 真牛逼！！！
     *
     * @return {@link String}
     * @throws Exception 异常
     */
    @GetMapping("/test2")
    public String test2() throws Exception {

        long startTime = System.currentTimeMillis();
        String json = "{\n" +
                "\n" +
                "  \"name\": \"小明\",\n" +
                "  \"age\": 38,\n" +
                "  \"email\": \"xiaoming@qq.com\",\n" +
                "  \"descC\": \"User5\"\n" +
                "}";
        String key = "3";

        Object o = map.get(key);

        //json字符串转成相应的类对象
        Object o1 = JSON.parseObject(json, o.getClass());

        String beanName = "user" + key + "ServiceImpl";
        //Map hashMap = JSON.parseObject(json, Map.class);

        reflectionService.invokeService(beanName, "save", o1);
        System.out.println("耗时：" + (System.currentTimeMillis() - startTime) + "毫秒");
        return "11111";
    }

    @GetMapping("/test1")
    public String test1(HttpServletRequest request) throws Exception {

        String json = "{\n" +
                "\n" +
                "  \"name\": \"张111三\",\n" +
                "  \"age\": 56,\n" +
                "  \"email\": \"zhangsan@qq.com\",\n" +
                "  \"descB\": \"User2\"\n" +
                "}";
        String key = "2";

        Object o = map.get(key);

        //json字符串转成相应的类对象
        Object o1 = JSON.parseObject(json, o.getClass());

        String beanName = "user" + key + "ServiceImpl";
        Object contextBean = applicationContext.getBean(beanName);
        //获取Student类名称为printinfo地方法

        Class<?> beanClass = contextBean.getClass();
        Class<?> aClass1 = o1.getClass();
//        Method methods1 = beanClass.getMethod("save", o.getClass());
        Method methods1 = null;


        Method[] methods = beanClass.getMethods();

        for (Method method : methods) {
            if (method.getName().equalsIgnoreCase("save")) {
                methods1= method;
            }
        }
        //调用save方法
        methods1.invoke(beanClass.newInstance(), o1);

        // 获取方法，这个selectAll实际上是父类的方法
        //Method method = ReflectionUtils.findMethod(contextBean.getClass(), "save", o1.getClass());
        // 反射执行方法
        //Object objRe = ReflectionUtils.invokeMethod(method, contextBean);

        System.out.println(json);

    /*    ServletContext servletContext = request.getSession().getServletContext();
        WebApplicationContext context = (WebApplicationContext) servletContext.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
        Object bean = context.getBean(beanName);*/
        return "success";
    }

}
