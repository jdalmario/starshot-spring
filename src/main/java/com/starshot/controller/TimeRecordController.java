package com.starshot.controller;

import com.starshot.domain.TimeRecord;
import com.starshot.service.TimeRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class TimeRecordController {

    @Autowired
    TimeRecordService timeRecordService;

    @RequestMapping(value = "/timeRecord")
    public String create(Model model) {
        model.addAttribute("timeRecord", new TimeRecord());
        model.addAttribute("timeRecords", timeRecordService.getTimeRecordList());
        return "main";
    }

    @PostMapping("/addTimeRecord")
    public String addTimeRecord(Model model, @ModelAttribute TimeRecord timeRecord) {
        timeRecordService.createRecord(timeRecord);
        return "redirect:/timeRecord";
    }
}
