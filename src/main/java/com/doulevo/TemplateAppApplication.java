package com.doulevo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.util.StringUtils;

import java.util.TimeZone;

@Slf4j
@SpringBootApplication
public class TemplateAppApplication implements CommandLineRunner {

  public static final String UTC = "UTC";

  @Value("${app.timezone}")
  private String timezone;

  public static void main(String[] args) {
    SpringApplication.run(TemplateAppApplication.class, args);
  }

  @Override
  public void run(String... args) {
    if (!StringUtils.hasText(timezone)) {
      log.warn("Unable to locate property \"app.timezone\". System default timezone will be used!");
      log.info("System default timezone:: {}", TimeZone.getDefault());
    } else {
      TimeZone.setDefault(TimeZone.getTimeZone(timezone));
      log.info("System default timezone set as :: {}", TimeZone.getDefault().getDisplayName());
    }
    log.info("Hello world!");
  }
}
