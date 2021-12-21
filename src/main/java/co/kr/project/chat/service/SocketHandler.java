package co.kr.project.chat.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import org.springframework.web.socket.WebSocketSession;

@Repository
@Component
public class SocketHandler extends TextWebSocketHandler {


}
