package com.celineys.jpastart.entity;


import lombok.*;
import javax.persistence.*;

//JPA 빨간 줄 뜰 때:
//Editor - Code Style - Inspections > Unresolved database references in annotations 체크 해제

@Entity
@Getter
@Setter
@Table(name = "MEMBER")
public class Member {

    @Id
    @Column(name = "ID")
    private String id;

    @Column(name = "NAME")
    private String username;

    private Integer age;

}