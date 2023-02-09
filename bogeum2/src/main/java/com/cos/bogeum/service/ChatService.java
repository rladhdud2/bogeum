package com.cos.bogeum.service;

import com.cos.bogeum.model.Room;
import com.cos.bogeum.model.Users;
import com.cos.bogeum.repository.ChatRoomRepository;
import com.cos.bogeum.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
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

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ChatRoomRepository chatRoomRepository;

    /**
     * 채팅 방 만들기
     */




}
