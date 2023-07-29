package ru.netology.sql_dao;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MyController {
    MyRepository repository;

    public MyController(MyRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/products/fetch-product")
    public ResponseEntity<List<String>> product(@RequestParam("name") String name) {
        return ResponseEntity.ok(repository.getProductName(name));

    }


}
