package com.example.mypractice.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HomeController {

    @GetMapping("/")
    fun test(): String {
        return "DEV-1에서 푸시";
    }
}