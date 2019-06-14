package az.edu.bsu.smsproject.controller;

import az.edu.bsu.smsproject.Service.CommonService;
import az.edu.bsu.smsproject.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.FileAlreadyExistsException;

@Controller
@RequestMapping("/rector")
public class RectorController {

    private final CommonService commonService;
    private final OrderService orderService;

    @Autowired
    public RectorController(CommonService commonService, OrderService orderService) {
        this.commonService = commonService;
        this.orderService = orderService;
    }

    @GetMapping(value = {"/", "/index"})
    public String index() {
        return "/rector/index";
    }

    @GetMapping("/orders")
    public String orders() {
        return "/rector/orders";
    }

    @PostMapping("/file")
    public String uploadOrder(@RequestParam("file") MultipartFile multipartFile, Model model) {
        try {
            orderService.addOrder(multipartFile);
        } catch (FileAlreadyExistsException e) {
            model.addAttribute("fileExist", true);
            return "/rector/orders";
        }
        return "/rector/index";
    }

}
