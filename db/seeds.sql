
-- seed data into the threats table
INSERT INTO threat_level (id, threat_lev)
VALUES  (1, "Street"),
        (2, "State"),
        (3, "Global"),
        (4, "Universal"),
        (5, "Cosmic");
-- seed data into the teams table
INSERT INTO known_teams (id, team_name)
VALUES  (1, "X-Men"),
        (2, "Avengers, The"),
        (3, "Umbrella Academy, The"),
        (4, "Seven, The"),
        (5, "Watchmen, The");
-- seed data into the supes table
INSERT INTO supes (first_name, last_name, alias, species, team_id, threat_level_id)
VALUES ("James", "Howlett", "Wolverine", "mutant", 1, 1),
		("Scott", "Summers", "Cyclops", "mutant", 1, 1),
       ("Jean", "Grey-Summers", "Marvel-Girl/Phoenix", "mutant", 1, 5),
       ("Robert", "Drake", "Iceman", "mutant", 1, 2),
       ("Henry", "McCoy", "Beast", "mutant", 1, 1),
       ("Charles", "Xavier", "Proffesor X", 1, 3),
       ("Erik", "Lensherr", "Magneto", NULL, 3),
       ("Tony", "Stark", "Iron Man", "human", 2, 2),
       ("Bruce", "Banner", "Hulk, The", "meta-human", 2, 3),
       ("Steve", "Rogers", "Captain America", "meta-human", 2, 1),
       ("Wanda", "Maximoff", "Scarlet Witch", "mutant", 2, 4),
       ("Thor", "Odinson", "Thor", "Asgardian", 2, 2),
       ("Vision", NULL, "Vision", "Android", 2, 3),
       ("Thanos", NULL, "Mad Titan, The", "Titanian Eternal", NULL, 4),
       ("Ultron", NULL, "Ultron", "Android", NULL, 3),
       ("Luther", "Hargreeves", "Number 1", "meta-human", 3, 1),
       ("Diego", "Hargreeves", "Number 2", "meta-human", 3, 1),
       ("Allison", "Hargreeves", "Number 3", "meta-human", 3, 2),
       ("Klaus", "Hargreeves", "Number 4", "meta-human", 3, 3),
       (NULL, "Hargreeves", "Number 5", "meta-human", 3, 4),
       ("Victor", "Hargreeves", "Number 7", "meta-human", 3, 3),
       ("John", NULL, "Homelander", "meta-human", 4, 3),
       ("Maggie", "Shaw", "Queen Maeve", "meta-human", 4, 2),
       ("Reggie", "Franklin", "A-Train", "meta-human", 4, 2),
       ("Kevin", NULL, "Deep, The", "meta-human", 4, 1),
       (NULL, NULL, "Black Noir", "meta-human", 4, 1),
       ("Annie", "January", "Starlight", "meta-human", 4, 1),
       (NULL, NULL, "Stormfront", "meta-human", 4, 2),
       ("Jonathan", "Osterman", "Dr. Manhattan", "meta-human", 5, 5),
       ("Walter", "Kovacs", "Rorshach", "human", 5, 1),
       ("Daniel", "Dreiberg", "Nite Owl II", "human", 5, 1),
       ("Edward", "Blake", "Comedian, The", "human", 5, 1),
       ("Adrian", "Veidt", "Ozymandias", "human", 5, 2);




       
       


