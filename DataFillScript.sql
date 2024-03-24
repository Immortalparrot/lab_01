-- Для тестирования подойдут пользователи с 1, 2, 3
CREATE TABLE IF NOT EXISTS `User` (`id` INT NOT NULL AUTO_INCREMENT,
                        `first_name` VARCHAR(256) NOT NULL,
                        `last_name` VARCHAR(256) NOT NULL,
                        `login` VARCHAR(256) NOT NULL,
                        `password` VARCHAR(256) NOT NULL,
                        `email` VARCHAR(256) NULL,
                        `title` VARCHAR(1024) NULL,
                        PRIMARY KEY (`id`),KEY `fn` (`first_name`),KEY `ln` (`last_name`));

CREATE TABLE IF NOT EXISTS `Route` (`id` INT NOT NULL AUTO_INCREMENT,
                        `name` VARCHAR(1024) NOT NULL,
                        `creator_id` INT NOT NULL,
                        PRIMARY KEY (`id`),
                        CONSTRAINT fk_c_u foreign key (creator_id) references User (id));


CREATE TABLE IF NOT EXISTS `Trip` (`id` INT NOT NULL AUTO_INCREMENT,
                        `route_id` INT NOT NULL,
                        `user_id` INT NOT NULL,
                        `route` VARCHAR(1024) NOT NULL,
                        PRIMARY KEY (`id`));


CREATE TABLE IF NOT EXISTS `RouteToTrip` (`route_id` INT NOT NULL,
                        `user_id` INT NOT NULL,
                        PRIMARY KEY(route_id, user_id),
                        CONSTRAINT fk_utc_u foreign key (user_id) references User (id),
                        CONSTRAINT fk_utc_c foreign key (route_id) references Route (id));
  
                                                          

insert into User(first_name, last_name, login, password, email, title) values ('name1', 'name1', 'name1', 'name1', 'name1@email.com','name1');
insert into User(first_name, last_name, login, password, email, title) values ('name2', 'name2', 'name2', 'name2', 'name2@email.com','name2');
insert into User(first_name, last_name, login, password, email, title) values ('name3', 'name3', 'name3', 'name3', 'name3@email.com','name3');
insert into User(first_name, last_name, login, password, email, title) values ('name4', 'name4', 'name4', 'name4', 'name4@email.com','name4');
insert into User(first_name, last_name, login, password, email, title) values ('name5', 'name5', 'name5', 'name5', 'name5@email.com','name5');
insert into User(first_name, last_name, login, password, email, title) values ('name6', 'name6', 'name6', 'name6', 'name6@email.com','name6');
insert into User(first_name, last_name, login, password, email, title) values ('name7', 'name7', 'name7', 'name7', 'name7@email.com','name7');
insert into User(first_name, last_name, login, password, email, title) values ('name8', 'name8', 'name8', 'name8', 'name8@email.com','name8');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name9');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name10');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name11');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name12');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name13');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name14');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name15');

insert into Route(name, creator_id) values ("route1", 1);
insert into Route(name, creator_id) values ("route2", 2);
insert into Route(name, creator_id) values ("route3", 3);
insert into Route(name, creator_id) values ("route4", 4);
insert into Route(name, creator_id) values ("route5", 5);
insert into Route(name, creator_id) values ("route6", 6);
insert into Route(name, creator_id) values ("route7", 7);
insert into Route(name, creator_id) values ("route8", 8);
insert into Route(name, creator_id) values ("route9", 9);
insert into Route(name, creator_id) values ("route10", 10);
insert into Route(name, creator_id) values ("route11", 11);
insert into Route(name, creator_id) values ("route12", 12);

insert into Trip(route_id, user_id, trip) values (1, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (1, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (1, 3, "trip3");
insert into Trip(route_id, user_id, trip) values (2, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (2, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (2, 3, "trip3");
insert into Trip(route_id, user_id, trip) values (3, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (3, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (3, 3, "trip3");
insert into Trip(route_id, user_id, trip) values (4, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (4, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (4, 3, "trip3");
insert into Trip(route_id, user_id, trip) values (5, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (5, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (5, 3, "trip3");
insert into Trip(route_id, user_id, trip) values (6, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (6, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (6, 3, "trip3");
insert into Trip(route_id, user_id, trip) values (7, 1, "trip1");
insert into Trip(route_id, user_id, trip) values (7, 2, "trip2");
insert into Trip(route_id, user_id, trip) values (7, 3, "trip3");


insert into RouteToTrip(route_id, user_id) values(1, 1);
insert into RouteToTrip(route_id, user_id) values(1, 2);
insert into RouteToTrip(route_id, user_id) values(1, 3);
insert into RouteToTrip(route_id, user_id) values(2, 1);
insert into RouteToTrip(route_id, user_id) values(2, 2);
insert into RouteToTrip(route_id, user_id) values(2, 3);
insert into RouteToTrip(route_id, user_id) values(3, 1);
insert into RouteToTrip(route_id, user_id) values(3, 2);
insert into RouteToTrip(route_id, user_id) values(3, 3);
insert into RouteToTrip(route_id, user_id) values(4, 1);
insert into RouteToTrip(route_id, user_id) values(4, 2);
insert into RouteToTrip(route_id, user_id) values(4, 3);
insert into RouteToTrip(route_id, user_id) values(5, 1);
insert into RouteToTrip(route_id, user_id) values(5, 2);
insert into RouteToTrip(route_id, user_id) values(6, 3);