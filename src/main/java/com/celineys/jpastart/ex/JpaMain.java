package com.celineys.jpastart.ex;

import com.celineys.jpastart.entity.Member;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JpaMain {
    public static void main(String[] args) {


        //엔티티 매니저 팩토리 생성
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("celine");

        //엔티티 매니저 생성
        EntityManager em =emf.createEntityManager();

        //엔티티 트랜잭션 획득
        EntityTransaction tx = em.getTransaction();

        try {

            tx.begin();
            logic(em);

            tx.commit();

        } catch (RuntimeException re) {
            System.out.println(re);
            tx.rollback();
            throw re;
        } finally {
            em.close();
        }

        emf.close();


    }

    private static void logic(EntityManager em){
        String id = "id7";
        Member member = new Member();
        member.setId(id);
        member.setUsername("celine");
        member.setAge(27);

        //등록
        em.persist(member);


        Member findMember = em.find(Member.class,"id7");
        Member findMember2 = em.find(Member.class,"id4");

        System.out.println("== :" + (findMember == findMember2));
        System.out.println("equals() : " + (findMember.equals(findMember2)));

        //member.setAge(20);
    }
}