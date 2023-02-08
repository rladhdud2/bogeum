package com.cos.bogeum.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Table(name ="shelter")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
        name = "SHELTER_SEQ_GENERATOR"
        , sequenceName = "SHELTER_SEQ"
        , initialValue = 1
        , allocationSize = 1
)
public class Shelter {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SHELTER_SEQ_GENERATOR")
    private int id;

    @Column(nullable = false, length = 50, unique = true)
    private String desertionNo;

    @Column(nullable = false, length = 30)
    private String kindCd;

    @Column(nullable = true, length = 30)
    private String colorCd;

    @Column(nullable = true, length = 30)
    private String age;

    @Column(nullable = true, length = 30)
    private String weight;

    @Column(nullable = true, length = 50)
    private String noticeSdt;

    @Column(nullable = true, length = 50)
    private String noticeEdt;

    @Lob
    private String popfile;

    @Column(nullable = true, length = 30)
    private String sexCd;

    @Column(nullable = true, length = 30)
    private String neuterYn;

    @Column(nullable = true, length = 100)
    private String specialMark;

    @Column(nullable = true, length = 100)
    private String careNm;

    @Column(nullable = true, length = 100)
    private String careTel;

    @Column(nullable = true, length = 200)
    private String careAddr;

    @Column(nullable = true, length = 200)
    private String processState;



}


