# BookshelfDB
Lab2 Borychev Denis 12 group 
# Aвторы
AuthorID (Первичный ключ, целое число)
FullName (Текст)
DateOfBirth (Дата)
Country (Текст(Таблица стран))
Genres (Текст(Таблица жанров) one to many)
# Книги
BookID (Первичный ключ, целое число)
Title (Текст)
AuthorID (Внешний ключ, целое число, связь с Authors.AuthorID)
Genre (Текст(Таблица жанров) one to many)
PublicationYear (Дата)
ReaderRating (чпт)
