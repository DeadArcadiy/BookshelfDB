# BookshelfDB
Lab2 Borychev Denis 12 group 
# Структура Базы Данных "Книги и Авторы" Mysql
![DB scheme](DB_scheme.png)
## Таблица `Авторы`

| Поле        | Тип данных | Описание                                              |
|-------------|------------|-------------------------------------------------------|
| `AuthorID`  | INT        | PK, уникальный идентификатор автора       |
| `FullName`  | TEXT       | Полное имя автора                                     |
| `DateOfBirth` | DATE      | Дата рождения автора                                  |
| `Country`   | TEXT       | Страна происхождения (лучше как ссылка на Таблицу стран)|
| `Genres`    | TEXT       | Жанры (лучше как связь один ко многим с Таблицей жанров)|

## Таблица `Книги`

| Поле             | Тип данных | Описание                                                         |
|------------------|------------|------------------------------------------------------------------|
| `BookID`         | INT        | PK, уникальный идентификатор книги                   |
| `Title`          | TEXT       | Название книги                                                   |
| `AuthorID`       | INT        | FK, связь с `Авторы.AuthorID`                          |
| `Genre`          | TEXT       | Жанр книги (лучше как связь один ко многим с Таблицей жанров)        |
| `PublicationYear` | DATE       | Дата публикации книги                                            |
| `ReaderRating`   | FLOAT      | Средний рейтинг книги, выставленный читателями                   |


