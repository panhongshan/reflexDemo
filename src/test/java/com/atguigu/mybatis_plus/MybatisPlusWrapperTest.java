package com.atguigu.mybatis_plus;

import com.atguigu.mybatis_plus.entity.User;
import com.atguigu.mybatis_plus.mapper.UserMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class MybatisPlusWrapperTest {

    @Autowired
    private UserMapper userMapper;


    @Test
    public void testQuery1(){
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("age",19);
        List<User> list = userMapper.selectList(wrapper);
        list.forEach(System.out::println);
    }

    @Test
    public void testQuery2() {
        List<User> list = userMapper.selectList(new QueryWrapper<User>().ge("age",20));
        System.out.println("年龄大于等于20岁的：");
        list.forEach(System.out::println);
        list=userMapper.selectList(new QueryWrapper<User>().le("age",20));
        System.out.println("年龄小于等于20岁的：");
        list.forEach(System.out::println);
    }

    @Test
    public void testOrderBy() {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.orderByAsc("id","age");
        List<User> list = userMapper.selectList(wrapper);
        list.forEach(System.out::println);
    }
}
