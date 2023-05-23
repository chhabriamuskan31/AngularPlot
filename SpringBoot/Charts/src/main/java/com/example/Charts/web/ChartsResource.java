package com.example.Charts.web;


import com.example.Charts.service.ChartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@CrossOrigin(origins = "http://localhost:4200/")
@RestController
@RequestMapping("/api")
public class ChartsResource {

    @Autowired
    private ChartsService chartsService;


    @GetMapping("/getSalesByProduct")
    public List<List<Object>> getSalesByProduct(){
        return this.chartsService.getSalesByProduct();
    }

    @GetMapping("/getSalesByYear")
    public List<List<Object>> getSalesByYear(){
        return this.chartsService.getSalesByYear();
    }

    @GetMapping("/getSalesByState")
    public List<List<Object>> getSalesByState(){
        return this.chartsService.getSalesByState();
    }
}
