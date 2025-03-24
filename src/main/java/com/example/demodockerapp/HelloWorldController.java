package com.example.demodockerapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloWorldController {


    @GetMapping("/hello-world")
    public void helloWorld() {
        System.out.println("Hello World");
    }
}
