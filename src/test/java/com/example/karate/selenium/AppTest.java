package com.example.karate.selenium;

import com.intuit.karate.junit5.Karate;

class AppTest {

    @Karate.Test
    Karate testWebScraper() {
        return Karate.run("classpath:features/web-scraper.feature");
    }

}
