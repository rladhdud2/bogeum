package com.cos.bogeum.model;

import lombok.*;

import javax.persistence.*;

@Table(name="room")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
        name = "ROOM_SEQ_GENERATOR"
        , sequenceName = "ROOM_SEQ"
        , initialValue = 1
        , allocationSize = 1
)
public class Room {

    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="CHAT_SEQ_GENERATOR")
    private int id;

    private String name;

    private String roomId;

//    @Builder
//    public Room(String name) {
//        this.name = name;
//    }
//
//    /**
//     * 채팅방 생성
//     * @param name 방 이름
//     * @return Room Entity
//     */
//    public static Room createRoom(String name) {
//        return Room.builder()
//                .name(name)
//                .build();
//    }

}
