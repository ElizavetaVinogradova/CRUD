package com.example.crud;

import com.example.crud.domain.Book;
import com.example.crud.repos.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class GreetingController {
    @Autowired
    private BookRepository bookRepository;

    private static final int BOOKS_PER_PAGE = 10;
    private int currentPage = 0;

    @GetMapping("/")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name,
                           Map<String, Object> model) {
        model.put("name", name);
        return "greeting";
    }


    @GetMapping("/main")
    public String main(Map<String, Object> model/*, @RequestParam(name="page", required = false) Integer page*/) {
        Iterable<Book> iterable = bookRepository.findAll();
        List<Book> books = makeCollection(iterable);
        //books.forEach(System.out::println);
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<>(books);
        pagedListHolder.setPageSize(BOOKS_PER_PAGE);

        if (currentPage < 0 ) { currentPage = 0; }
        if (currentPage >= pagedListHolder.getPageCount()) { currentPage = pagedListHolder.getPageCount()-1; }

        //System.out.println("PAGE = " + currentPage);

        pagedListHolder.setPage(currentPage);

        model.put("books", pagedListHolder.getPageList());
        model.put("countForPages", currentPage+1);
        model.put("quantityOfPages", pagedListHolder.getPageCount());

        return "main";
    }

    @PostMapping("/main")
    public String add(@RequestParam String title, @RequestParam String description, @RequestParam Integer printYear, @RequestParam String author,
                      @RequestParam String isbn, @RequestParam Boolean readAlready, Map<String, Object> model){
        if (isbn == null || printYear==null || title == null || description==null ||author == null)
            return "main";
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
        bookRepository.deleteById(id);
        return "redirect:/main";
    }

    @GetMapping("read/{id}")
    public String readAlreadyTo(@PathVariable("id") int id){
        Book book = bookRepository.findById(id);
         if (!book.isReadAlready()) {
           book.setReadAlready(true);
         }
       bookRepository.save(book);
        return "redirect:/main";
    }

    private <Book> List<Book> makeCollection(Iterable<Book> iter) {
        List<Book> books = new ArrayList<>();
        for (Book book : iter) {
            books.add(book);
        }
        return books;
    }

    @GetMapping("/prev")
    public String prev(Map<String, Object> model){
        //Book book = bookRepository.findById(id);
        //model.put("books", book);
        currentPage--;
        return "redirect:/main";
    }

    @GetMapping("/next")
    public String next(Map<String, Object> model){
        //Book book = bookRepository.findById(id);
        //model.put("books", book);
        currentPage++;
        return "redirect:/main";
    }

}