package com.fastcampus.java.project3.mycontact.repository;

import com.fastcampus.java.project3.mycontact.domain.Person;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@Transactional
class PersonRepositoryTest {

    @Autowired
    PersonRepository personRepository;

    @Test
    void crud() {
        Person person = new Person();
        person.setName("Martin");

        personRepository.save(person);

        List<Person> result = personRepository.findByName("Martin");

        assertThat(result.size()).isEqualTo(2);
        assertThat(result.get(0).getName()).isEqualTo("Martin");
//        assertThat(result.get(0).getAge()).isEqualTo(10);
    }

    @Test
    void findByBirthdayBetween() {
        List<Person> result = personRepository.findByMonthOfBirthday(8);

        assertThat(result.size()).isEqualTo(2);
        assertThat(result.get(0).getName()).isEqualTo("Martin");
        assertThat(result.get(1).getName()).isEqualTo("Sophia");
    }
}