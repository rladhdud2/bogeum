package com.cos.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="users3")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity	//user 클래스가 자동으로 db에 테이블이 생성된다.


public class Users {
	@Id	//Primary Key
	
	private int id;	//시퀀스
	
	@Column(nullable = false, length = 30, unique = true)
	private String username;	//아이디
	
	@Column(nullable = false, length = 100)	//해쉬로 변경하여 암호화 length 크기
	private String password;
	
	@Column(nullable = false, length = 50)
	private String email;
	
//	
}
