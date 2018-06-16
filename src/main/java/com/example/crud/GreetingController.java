package com.example.crud;

import com.example.crud.domain.Book;
import com.example.crud.repos.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class GreetingController {
    @Autowired
    private BookRepository bookRepository;

    @GetMapping("/")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name,
                           Map<String, Object> model) {
        model.put("name", name);
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model){
        Iterable<Book> books = bookRepository.findAll();
        model.put("books", books);
        return "main";
    }

    @PostMapping("/main")
    public String add(@RequestParam String title, @RequestParam String description, @RequestParam int printYear, @RequestParam String author,
                      @RequestParam String isbn, @RequestParam boolean readAlready, Map<String, Object> model){
        Book book = new Book(title, description, printYear, author, isbn, readAlready);
        bookRepository.save(book);
        Iterable<Book> books = bookRepository.findAll();
        model.put("books", books);
        return "main";
    }

    @PostMapping ("filter")
    public String filter(@RequestParam String title, Map<String, Object> model){
        Iterable<Book> books;
        if (title!=null && !title.isEmpty()){
            books = bookRepository.findByTitleContaining(title);
        }else {
            books = bookRepository.findAll();
        }
        model.put("books", books);
        return "main";
    }

    @GetMapping("edit/{id}")
    public String update(@PathVariable("id") int id, Map<String, Object> model){
        Book book = bookRepository.findById(id);
        model.put("books", book);
        return "update";
    }

    @PostMapping("/post")
    public String post(@ModelAttribute("books") Book book){
        bookRepository.save(book);
        return "redirect:/main";
    }

    @GetMapping("remove/{id}")
    public String remove(@PathVariable("id") int id){
        System.out.println("id =" + id);
        bookRepository.deleteById(id);
        return "redirect:/main";
    }
}