package com.cos.bogeum.config;

import com.cos.bogeum.handler.ChatHandler;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 * @ServerEndpoint 어노테이션이 달린 클래스들은 WebSocket이 생성될 때마다
 * 인스턴스가 생성되고 JWA에 의해 관리되기 때문에 스프링의  @Autowired가 설정된 멤버들이
 * 정상적으로 초기화되지않음. 이때 이를 연결해 주고 초기화해 주는 클래스가 필요
 */
@Configuration
@RequiredArgsConstructor
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {

    private final ChatHandler chatHandler;

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(chatHandler, "ws/chat").setAllowedOrigins("*");
    }


//    @Bean
//    public ServerEndpointExporter serverEndpointExporter() {
//        return new ServerEndpointExporter();
//    }
}
