package com.points.credit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.points.credit.model.Points;
import com.points.credit.service.PointsService;

@RestController
@RequestMapping("/points")
public class PointsController {

    @Autowired
    PointsService rewardsService;
    
    @GetMapping(value = "/calculation/{customerId}",produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Points> getPoints(@PathVariable("customerId") Long customerId){
    
        Points customerRewards = rewardsService.getRewardsPoints(customerId);
        return new ResponseEntity<>(customerRewards,HttpStatus.OK);
    }

}
