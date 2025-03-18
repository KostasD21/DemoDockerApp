package com.example.demodockerapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {


    @GetMapping
    public void helloWorld() {
        System.out.println("Hello World");
    }
}
