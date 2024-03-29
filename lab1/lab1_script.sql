CREATE DATABASE IF NOT EXISTS book_store_db;

USE book_store_db;

CREATE TABLE IF NOT EXISTS list_of_books (
    N 		INT,
    Code 	INT,
    New		BOOLEAN,
    Title	VARCHAR(100),
    Price	DECIMAL(8, 2),
    Publisher	VARCHAR(50),
    Pages	INT,
    Format	VARCHAR(20),
    Date	DATE,
    Edition	INT,
    Topic	VARCHAR(50),
    Category	VARCHAR(50)
);

INSERT INTO list_of_books (N, Code, New, Title, Price, Publisher, Pages, Format, Date, Edition, Topic, Category) VALUES
(2,5110,0,'Апаратні засоби мультимедіа. ВідеосисTopic РС','15.51','Видавнича група BHV',400,'70х100/16','2000-07-24',5000,'Використання ПК в цілому','Підручники'),
(8,4985,0,'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.','18.90','Вільямс',288,'70х100/16','2000-07-07',5000,'Використання ПК в цілому','Підручники'),
(9,5141,0,'Структури даних та алгоритми','37.80','Вільямс',384,'70х100/16','2000-09-29',5000,'Використання ПК в цілому','Підручники'),
(20,5127,0,'Автоматизація інженерно-графічних робіт','11.58','Видавнича група BHV',256,'70х100/16','2000-06-15',5000,'Використання ПК в цілому','Підручники'),
(31,5110,0,'Апаратні засоби мультимедіа. ВідеосисTopic РС','15.51','Видавнича група BHV',400,'70х100/16','2000-07-24',5000,'Використання ПК в цілому','Апаратні засоби ПК'),
(46,5199,0,'Залізо IBM 2001','30.07','МикроАрт',368,'70х100/16','2000-12-02',5000,'Використання ПК в цілому','Апаратні засоби ПК'),
(50,3851,0,'Захист інформації та безпека комп`ютерних систем','26.00','DiaSoft',480,'84х108/16',NULL,5000,'Використання ПК в цілому','Захист і безпека ПК'),
(58,3932,0,'Як перетворити персональний комп`ютер на вимірювальний комплекс','7.65','ДМК',144,'60х88/16','1999-06-09',5000,'Використання ПК в цілому','Інші книги'),
(59,4713,0,'Plug-ins. Додаткові програми для музичних програм','11.41','ДМК',144,'70х100/16','2000-02-22',5000,'Використання ПК в цілому','Інші книги'),
(175,5217,0,' Windows МЕ. Найновіші версії програм','16.57','Триумф',320,'70х100/16','2000-08-25',5000,'Операційні системи','Windows 2000'),
(176,4829,0,'Windows 2000 Professional крок за кроком з CD','27.25','Эком',320,'70х100/16','2000-04-28',5000,'Операційні системи','Windows 2000'),
(188,5170,0,'Linux версії','24.43','ДМК',346,'70х100/16','2000-09-29',5000,'Операційні системи','Linux'),
(191,860,0,'Операційна сисTopic UNIX','3.50','Видавнича група BHV',395,'84х100/16','1997-05-05',5000,'Операційні системи','Unix'),
(203,44,0,'Відповіді на актуальні запитання щодо OS/2 Warp','5.00','DiaSoft',352,'60х84/16','1996-03-20',5000,'Операційні системи','Інші операційні системи'),
(206,5176,0,'Windows Ме. Супутник користувача','12.79','Видавнича група BHV',306,NULL,'2000-10-10',5000,'Операційні системи','Інші операційні системи'),
(209,5462,0,'Мова програмування С++. Лекції та вправи','29.00','DiaSoft',656,'84х108/16','2000-12-12',5000,'Програмування','C&C++'),
(210,4982,0,'Мова програмування С. Лекції та вправи','29.00','DiaSoft',432,'84х108/16','2000-07-12',5000,'Програмування','C&C++'),
(220,4687,0,'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів ','17.60','ДМК',240,'70х100/16','2000-03-02',5000,'Програмування','C&C++'),
(222,235,0,'Інформаційні системи і структури даних',NULL,'Києво-Могилянська академія',288,'60х90/16',NULL,400,'Використання ПК в цілому','Інші книги'),
(225,8746,1,'Бази даних в інформаційних сисTopicх',NULL,'Університет "Україна"',418,'60х84/16','2018-07-25',100,'Програмування','SQL'),
(226,2154,1,'Сервер на основі операційної системи FreeBSD 6.1',0,'Університет "Україна"',216,'60х84/16','2015-11-03',500,'Програмування','Інші операційні системи'),
(245,2662,0,'Організація баз даних та знань',0,'Вінниця: ВДТУ',208,'60х90/16','2001-10-10',1000,'Програмування','SQL'),
(247,5641,1,'Організація баз даних та знань',0,'Видавнича група BHV',384,'70х100/16','2021-12-15',5000,'Програмування','SQL');

DROP DATABASE IF EXISTS book_store_db;

CREATE DATABASE IF NOT EXISTS book_store_V2_db;

USE book_store_V2_db;

CREATE TABLE IF NOT EXISTS list_of_books (
	N 		INT UNSIGNED NOT NULL,
	Code 		INT UNSIGNED NOT NULL,
	New		BOOLEAN NOT NULL,
	Title		VARCHAR(100) NOT NULL,
	Price		DECIMAL(8, 2) DEFAULT 0,
	Publisher 	VARCHAR(50) NOT NULL,
	Pages		INT UNSIGNED NOT NULL,
	Format		VARCHAR(20) NULL,
	Date		DATE NULL,
	Edition		INT UNSIGNED NOT NULL,
	Topic		VARCHAR(50) NOT NULL,
	Category	VARCHAR(50) NOT NULL,
	PRIMARY KEY (N),
    	CHECK (New=TRUE OR New=FALSE),
	CHECK (N>0 AND Code>0 AND Pages>0 AND Edition>0)
);

CREATE INDEX category_index 
ON list_of_books (Category);

INSERT INTO list_of_books (N, Code, New, Title, Price, Publisher, Pages, Format, Date, Edition, Topic, Category) VALUES
(2,5110,0,'Апаратні засоби мультимедіа. ВідеосисTopic РС','15.51','Видавнича група BHV',400,'70х100/16','2000-07-24',5000,'Використання ПК в цілому','Підручники'),
(8,4985,0,'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.','18.90','Вільямс',288,'70х100/16','2000-07-07',5000,'Використання ПК в цілому','Підручники'),
(9,5141,0,'Структури даних та алгоритми','37.80','Вільямс',384,'70х100/16','2000-09-29',5000,'Використання ПК в цілому','Підручники'),
(20,5127,0,'Автоматизація інженерно-графічних робіт','11.58','Видавнича група BHV',256,'70х100/16','2000-06-15',5000,'Використання ПК в цілому','Підручники'),
(31,5110,0,'Апаратні засоби мультимедіа. ВідеосисTopic РС','15.51','Видавнича група BHV',400,'70х100/16','2000-07-24',5000,'Використання ПК в цілому','Апаратні засоби ПК'),
(46,5199,0,'Залізо IBM 2001','30.07','МикроАрт',368,'70х100/16','2000-12-02',5000,'Використання ПК в цілому','Апаратні засоби ПК'),
(50,3851,0,'Захист інформації та безпека комп`ютерних систем','26.00','DiaSoft',480,'84х108/16',NULL,5000,'Використання ПК в цілому','Захист і безпека ПК'),
(58,3932,0,'Як перетворити персональний комп`ютер на вимірювальний комплекс','7.65','ДМК',144,'60х88/16','1999-06-09',5000,'Використання ПК в цілому','Інші книги'),
(59,4713,0,'Plug-ins. Додаткові програми для музичних програм','11.41','ДМК',144,'70х100/16','2000-02-22',5000,'Використання ПК в цілому','Інші книги'),
(175,5217,0,' Windows МЕ. Найновіші версії програм','16.57','Триумф',320,'70х100/16','2000-08-25',5000,'Операційні системи','Windows 2000'),
(176,4829,0,'Windows 2000 Professional крок за кроком з CD','27.25','Эком',320,'70х100/16','2000-04-28',5000,'Операційні системи','Windows 2000'),
(188,5170,0,'Linux версії','24.43','ДМК',346,'70х100/16','2000-09-29',5000,'Операційні системи','Linux'),
(191,860,0,'Операційна сисTopic UNIX','3.50','Видавнича група BHV',395,'84х100/16','1997-05-05',5000,'Операційні системи','Unix'),
(203,44,0,'Відповіді на актуальні запитання щодо OS/2 Warp','5.00','DiaSoft',352,'60х84/16','1996-03-20',5000,'Операційні системи','Інші операційні системи'),
(206,5176,0,'Windows Ме. Супутник користувача','12.79','Видавнича група BHV',306,NULL,'2000-10-10',5000,'Операційні системи','Інші операційні системи'),
(209,5462,0,'Мова програмування С++. Лекції та вправи','29.00','DiaSoft',656,'84х108/16','2000-12-12',5000,'Програмування','C&C++'),
(210,4982,0,'Мова програмування С. Лекції та вправи','29.00','DiaSoft',432,'84х108/16','2000-07-12',5000,'Програмування','C&C++'),
(220,4687,0,'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів ','17.60','ДМК',240,'70х100/16','2000-03-02',5000,'Програмування','C&C++'),
(222,235,0,'Інформаційні системи і структури даних',NULL,'Києво-Могилянська академія',288,'60х90/16',NULL,400,'Використання ПК в цілому','Інші книги'),
(225,8746,1,'Бази даних в інформаційних сисTopicх',NULL,'Університет "Україна"',418,'60х84/16','2018-07-25',100,'Програмування','SQL'),
(226,2154,1,'Сервер на основі операційної системи FreeBSD 6.1',0,'Університет "Україна"',216,'60х84/16','2015-11-03',500,'Програмування','Інші операційні системи'),
(245,2662,0,'Організація баз даних та знань',0,'Вінниця: ВДТУ',208,'60х90/16','2001-10-10',1000,'Програмування','SQL'),
(247,5641,1,'Організація баз даних та знань',0,'Видавнича група BHV',384,'70х100/16','2021-12-15',5000,'Програмування','SQL');

ALTER TABLE list_of_books 
ADD Author varchar(15);

ALTER TABLE list_of_books
MODIFY COLUMN Author varchar(20);

ALTER TABLE list_of_books
DROP COLUMN Author;

CREATE UNIQUE INDEX N_index 
ON list_of_books (N);

SELECT * FROM list_of_books 
ORDER BY N;

DROP INDEX N_index 
ON list_of_books;
