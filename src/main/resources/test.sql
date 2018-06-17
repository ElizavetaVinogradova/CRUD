CREATE TABLE books
(
  id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title varchar(100),
  description varchar(255),
  author varchar(100),
  isbn varchar(20),
  print_year int(11),
  read_already bit(1),
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;
  )


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 1
    , "Атлант расправил плечи"
    , "Альтернативная история социалистической Америки"
    , "Айн Рэнд"
    , 1
    , 1957
    , FALSE);

INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 2
    , "Источник"
    , "История про гордого архитектора"
    , "Айн Рэнд"
    , 2
    , 1981
    , TRUE);

INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 3
    , "1984"
    , "Роман-антиутопия"
    , "Джордж Оруэлл"
    , 3
    , 1949
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 4
    , "451 градус по Фаренгейту"
    , "Научно-фантастический роман"
    , "Рэй Брэдбери"
    , 4
    , 1953
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 5
    , "Скотный двор"
    , "Сатирическая повесть-притча"
    , "Джордж Оруэлл"
    , 5
    , 1945
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 6
    , "Властелин колец"
    , "Фэнтази, война за Средиземье"
    , "Джон Р.Р.Толкиен"
    , 6
    , 1954
    , FALSE);

INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 7
    , "Хо́ббит, или Туда и обратно"
    , "Фэнтази, война за Эрибор"
    , "Джон Р.Р.Толкиен"
    , 7
    , 1937
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 8
    , "Гарри Поттер и философский камень"
    , "Фэнтази, первая часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 8
    , 1997
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 9
    , "Гарри Поттер и тайная комната"
    , "Фэнтази, вторая часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 9
    , 1998
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 10
    , "Гарри Поттер и узник Азкабана"
    , "Фэнтази, третья часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 10
    , 1999
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 11
    , "Гарри Поттер и кубок Огня"
    , "Фэнтази, четвертая часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 11
    , 2000
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 12
   , "Гарри Поттер и орден Феникса"
    , "Фэнтази, пятая часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 12
    , 2003
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 13
    , "Гарри Поттер и принц-полукровка"
    , "Фэнтази, шестая часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 10
    , 2005
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 14
    , "Гарри Поттер и дары смерти"
    , "Фэнтази, седьмая часть истории о Гарри Поттере"
    , "Джоан Роулинг"
    , 14
    , 2007
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 15
    , "5П"
    , "Роман"
    , "Виктор Пелевин"
    , 15
    , 2008
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 16
    , "Бремя страстей человеческих"
    , "Роман"
    , "Сомерсет Моэм"
    , 16
    , 1915
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 17
    , "Затворник и Шестипалый"
    , "Рассказ"
    , "Виктор Пелевин"
    , 17
    , 1990
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 18
    , "Бойцовский клуб"
    , "Контркультурный роман"
    , "Чак Паланик"
    , 18
    , 1996
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 19
    , "Облачный Атлас"
    , "Роман"
    , "Дэвид Митчел"
    , 19
    , 2004
    , FALSE);

INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 20
    , "Священная книга оборотня"
    , "Роман"
    , "Виктор Пелевин"
    , 20
    , 2004
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 21
    , "Ампир V"
    , "Роман"
    , "Виктор Пелевин"
    , 21
    , 2006
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 22
    , "Бетман Аполло"
    , "Роман"
    , "Виктор Пелевин"
    , 22
    , 2013
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 23
    , "Понаехавшая"
    , "Автобиографический роман"
    , "Наринэ Абгарян"
    , 23
    , 2011
    , FALSE);


INSERT INTO list_books (id, title, description, author, isbn, print_year, read_already)
VALUES
  ( 24
    , "Сантехник. Твое мое колено"
    , "Автобиографический роман"
    , "Слава Сэ"
    , 24
    , 2014
    , FALSE)