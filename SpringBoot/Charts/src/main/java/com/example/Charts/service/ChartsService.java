package com.example.Charts.service;

import com.example.Charts.repository.ChartsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Service
public class ChartsService {

    @Autowired
    private ChartsRepository chartsRepository;

    public List<List<Object>> getSalesByProduct(){
        List<Map<String, Object>> records = this.chartsRepository.getSalesByProduct();
        List<List<Object>> bars = new ArrayList<>();
        for(Map i: records){
            List<Object> temp = new ArrayList<>();
            for(Object record: i.values()){
                temp.add(record);
            }
            bars.add(temp);
        }
        System.out.println(bars);
        return bars;
    }

    public List<List<Object>> getSalesByYear(){
        List<Map<String, Object>> records = this.chartsRepository.getSalesByYear();
        List<List<Object>> bars = new ArrayList<>();
        for(Map i: records){
            List<Object> temp = new ArrayList<>();
            for(Object record: i.values()){
                temp.add(record);
            }
            bars.add(temp);
        }
        System.out.println(bars);
        return bars;
    }
    public List<List<Object>> getSalesByState(){
        List<Map<String, Object>> records = this.chartsRepository.getSalesByState();
        List<List<Object>> bars = new ArrayList<>();
        for(Map i: records){
            List<Object> temp = new ArrayList<>();
            for(Object record: i.values()){
                temp.add(record);
            }
            bars.add(temp);
        }
        System.out.println(bars);
        return bars;
    }


}
