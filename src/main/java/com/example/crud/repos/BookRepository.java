package com.example.crud.repos;

import com.example.crud.domain.Book;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookRepository extends CrudRepository<Book, Integer> {
    List<Book> findByTitleContaining(String title);
    Book findById(int id);
}
