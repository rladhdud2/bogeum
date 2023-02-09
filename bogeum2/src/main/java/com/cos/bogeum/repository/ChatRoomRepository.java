package com.cos.bogeum.repository;

import com.cos.bogeum.dto.ChatRoomDto;
import com.cos.bogeum.model.Room;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ChatRoomRepository extends JpaRepository<Room, Integer> {

    //방 목록
    List<ChatRoomDto> findAllById();

}
