package com.atguigu.mybatis_plus;

import com.atguigu.mybatis_plus.entity.User;
import com.atguigu.mybatis_plus.mapper.UserMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class MybatisPlusApplicationTests {

    @Autowired
    private UserMapper userMapper;

    /**
     * 查询全部
     */
    @Test
    public void findAll() {
        List<User> list = userMapper.selectList(null);
        list.forEach(System.out::println);
    }

    /**
     * 新增数据
     */
    @Test
    public void insert() {
        User user=new User();
        user.setName("test002");
        user.setAge(21);
        user.setEmail("test002@qq.com");
        userMapper.insert(user);
    }

    /**
     * 修改数据
     */
    @Test
    public void update() {
        User user=new User();
        user.setId(1470385652120997890L);
        user.setName("admin");
        user.setAge(30);
        user.setEmail("admin@qq.com");
        userMapper.updateById(user);
    }

    /**
     * 测试乐观锁修改
     */
    @Test
    void testVersionUpdate() {
        User user = userMapper.selectById(1470385652120997890L);
        user.setAge(35);
        userMapper.updateById(user);
    }

    /**
     * 分页查询
     */
    @Test
    public void testSelectPage(){

        Page page=new Page(2,3);
        userMapper.selectPage(page,null);
        page.getRecords().forEach(System.out::println);
    }

    /**
     * 测试删除
     */
    @Test
    void testDelete() {
        int row = userMapper.deleteById(1397821435455586306l);
        System.out.println("row = " + row);
    }
}
