package com.eshop.ecommerce.controller;

import com.eshop.ecommerce.dto.Purchase;
import com.eshop.ecommerce.dto.PurchaseResponse;
import com.eshop.ecommerce.service.CheckoutService;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("https://www.ecommerce.jimmyxj.com")
@RestController
@RequestMapping("/api/hello")
public class HelloController {
    public HelloController(CheckoutService checkoutService) {
    }

    @GetMapping("/test")
    public String helloWorld() {
        return "Hello world!";
    }

}









