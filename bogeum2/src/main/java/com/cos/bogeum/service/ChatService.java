package com.cos.bogeum.service;

import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Service
@ServerEndpoint(value = "/chat")
public class ChatService {
//    private static Set<Session> clients = Collections.synchronizedSet(new
//            HashSet<Session>());
//
//
//    @OnOpen//클라이언트가 접속할 때 발생하는 이벤트
//    public void OnOpen(Session s){
//        System.out.println("open session : " + s.toString());
//        if(!clients.contains(s)) {
//            clients.add(s);
//            System.out.println("session open : " + s);
//        } else {
//            System.out.println("이미 연결된 session!!!");
//        }
//    }
//
//    @OnMessage//메세지가 수신되었을 때
//    public void onMessage(String msg, Session session) throws Exception {
//        System.out.println("receive message : " + msg);
//        for (Session s : clients) {
//            System.out.println("send data : " + msg);
//            s.getBasicRemote().sendText(msg);
//        }
//    }
//
//    @OnClose//클라이언트가 브라우저를 끄거나 다른 경로로 이동할 때
//    public void onClose(Session s) {
//        System.out.println("session close : " + s);
//        clients.remove(s);
//
//    }
}
