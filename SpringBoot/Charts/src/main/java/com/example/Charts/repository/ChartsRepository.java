package com.example.Charts.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public class ChartsRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Map<String, Object>> getSalesByProduct(){
        String query = "EXEC dbo.sp_getSalesByProduct";
        return this.jdbcTemplate.queryForList(query);
    }

    public List<Map<String, Object>> getSalesByYear(){
        String query = "EXEC dbo.sp_getSalesByYear";
        return this.jdbcTemplate.queryForList(query);
    }
    public List<Map<String, Object>> getSalesByState(){
        String query = "EXEC dbo.sp_getSalesByTopTenState;";
        return this.jdbcTemplate.queryForList(query);
    }
}
