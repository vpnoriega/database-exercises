use codeup_test_db;
truncate admin_users;
drop table if exists admin_users;
create table admin_users (
                             id int unsigned auto_increment,
                             username varchar(100) not null,
                             primary key (id)
);
insert into admin_users (username)
values('vanessa_DeSanAnto'),
      ('jake_theChad'),
      ('rolando_grandePapi');
truncate student_users;
drop table if exists student_users;
create table student_users (
                               id int unsigned auto_increment,
                               username varchar(100) not null,
                               primary key (id)
);
insert into student_users (username)
values('victor_laFuerza'),
      ('sergio_elBufonGRANDE');
truncate quizzes;
drop table if exists quizzes;
create table quizzes (
                         id int unsigned auto_increment,
                         quiz_number int unsigned not null,
                         primary key (id)
);
insert into quizzes (quiz_number)
values(1), (2), (3);
truncate questions;
drop table if exists questions;
create table questions (
                           id int unsigned auto_increment,
                           question varchar(100) not null,
                           quiz_id int unsigned not null,
                           primary key (id),
                           foreign key (quiz_id) references quizzes(id)
);
insert into questions(question, quiz_id)
values('What is today''s date?', 1),
      ('How long is loop 410?', 2),
      ('Quien es la voz de San Antonio?', 3);
truncate quiz_answers;
drop table if exists quiz_answers;
create table quiz_answers (
                              id int unsigned auto_increment,
                              question_answer varchar(100) not null,
                              question_id int unsigned not null,
                              quiz_id int unsigned not null,
                              primary key (id),
                              foreign key (question_id) references questions(id),
                              foreign key (quiz_id) references quizzes(id)
);
insert into quiz_answers (question_answer, quiz_id, question_id)
values('May 25', 1, 1),
      ('49.49mi', 2, 1),
      ('Vanessa Noriega', 3, 1);
truncate student_answers;
drop table if exists student_answers;
create table student_answers (
                                 id int unsigned auto_increment,
                                 student_answer varchar(100) not null,
                                 student_id int unsigned not null,
                                 quiz_id int unsigned not null,
                                 question_id int unsigned not null,
                                 primary key (id),
                                 foreign key (quiz_id) references quizzes(id),
                                 foreign key (question_id) references questions(id),
                                 foreign key (student_id) references student_users(id)
);
insert into student_answers (student_answer, student_id, quiz_id, question_id)
values('May 25', 1, 1, 1),
      ('50mi', 1, 2, 1),
      ('Sergio Davila papiiiiii', 2, 3, 1);