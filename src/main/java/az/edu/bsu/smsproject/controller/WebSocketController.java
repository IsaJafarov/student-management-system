package az.edu.bsu.smsproject.controller;

import az.edu.bsu.smsproject.domain.Message;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WebSocketController {

    @MessageMapping("/")
    @SendTo("/topic/destination")
    public Message handleMessage(Message message){
        System.out.println(message);
        System.out.println(message.getTime().getYear());
        System.out.println(message.getTime().getMonth());
        System.out.println(message.getTime().getDayOfMonth());
        System.out.println(message.getTime().getHour());
        System.out.println(message.getTime().getMinute());
        return message;
    }

}
