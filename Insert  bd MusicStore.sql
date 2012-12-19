-- Label Section
-- ___________________
INSERT INTO LABEL (NOM,IMAGE) VALUES ('Sony Music Entertainment','sony-music.png');
INSERT INTO LABEL (NOM,IMAGE) VALUES ('Universal','universal.png');
INSERT INTO LABEL (NOM,IMAGE) VALUES ('Epic Records','epic-records.png');
INSERT INTO LABEL (NOM,IMAGE) VALUES ('Popculture','popculture.png');
INSERT INTO LABEL (NOM,IMAGE) VALUES ('Hospital Records','hospital-records.png');

-- Genre Section
--____________________

INSERT  INTO GENRE (LABEL) VALUES('Pop');
INSERT  INTO GENRE (LABEL) VALUES('Rock');
INSERT  INTO GENRE (LABEL) VALUES('Classique');
INSERT  INTO GENRE (LABEL) VALUES('Electro');
INSERT  INTO GENRE (LABEL) VALUES('Hard Rock');
INSERT  INTO GENRE (LABEL) VALUES('Jazz');

-- Artists Section
-- ___________________ 
INSERT INTO ARTISTE (NOM) VALUES ('Michael Jackson');
INSERT INTO ARTISTE (NOM) VALUES ('Ray Charles');
INSERT INTO ARTISTE (NOM) VALUES ('David Guetta');
INSERT INTO ARTISTE (NOM) VALUES ('Daft Punk');
INSERT INTO ARTISTE (NOM) VALUES ('Madeon');
INSERT INTO ARTISTE (NOM) VALUES ('Camo & Krooked');
INSERT INTO ARTISTE (NOM) VALUES ('Boys Noize');
INSERT INTO ARTISTE (NOM) VALUES ('Dada Life');
INSERT INTO ARTISTE (NOM) VALUES ('André Rieu');
INSERT INTO ARTISTE (NOM) VALUES ('Ravi Shankar');
INSERT INTO ARTISTE (NOM) VALUES ('Mozart');
INSERT INTO ARTISTE (NOM) VALUES ('Linkin Park');
INSERT INTO ARTISTE (NOM) VALUES ('ACDC');
INSERT INTO ARTISTE (NOM) VALUES ('Machine Head');
INSERT INTO ARTISTE (NOM) VALUES ('Metallica');
INSERT INTO ARTISTE (NOM) VALUES ('Baptiste Herbin');
INSERT INTO ARTISTE (NOM) VALUES ('Diana Krall');
INSERT INTO ARTISTE (NOM) VALUES ('Hugh Laurie');
INSERT INTO ARTISTE (NOM) VALUES ('Lana Del Rey');
INSERT INTO ARTISTE (NOM) VALUES ('Mylene Farmer');
INSERT INTO ARTISTE (NOM) VALUES ('Muse');
INSERT INTO ARTISTE (NOM) VALUES ('Pink');

-- Album Section
-- ___________________ 	
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('This is it',2,19.99,'michael-jackson_this-is-it.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('The Great Ray Charles',1,19.99,'ray-charles_the-great-ray-charles.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('One Love',2,9.99,'david-guetta_one-love.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Alive',3,9.99,'daft-punk_alive.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Finale',4,9.99,'madeon_finale.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Above Beyond',5,17.99,'camo-krooked_above-beyond.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Power',5,9.99,'boys-noize_power.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Rules of Dada',5,9.99,'dada-life_rules-of-dada.png');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Genius Loves Company',1,17.99,'ray-charles_genius-loves-company.bmp');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Joyeux Noël !',2,19.99,'91bYY0l4O3L._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('The very best of',1,5.99,'51JTKpz5E7L._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('100 Chefs-D Oeuvre',2,19.99,'41KVdJTlhwL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Discovery',3,9.99,'71K8jv7ANfL._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Homework',4,9.99,'9176NIbLbVL._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Live At River Plate',5,9.99,'517fiXeulLL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Living Things',5,9.99,'41CH33hE2rL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Meteora',5,9.99,'71iOQyfuJkL._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Minutes To Midnight',1,17.99,'41iHTN8Ai4L._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Machine Fucking Head',5,9.99,'81nrELBpSjL._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Black Album',5,9.99,'31h2jB0BMpL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Brother Stoon',1,17.99,'6133qu3xLfL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Doing All Right',5,9.99,'41YVkSr-NKL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Glad Rag Doll',5,9.99,'51issi9rI4L._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Live In Paris',1,17.99,'51TNfrMp6XL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Let Them Talk',5,9.99,'51FDVylkAOL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Born To Die',1,17.99,'81I0K2b3K5L._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Video Games',5,1.99,'51jw5v3QmmL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Bleu Noir',5,9.99,'512zRcVC9tL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Monkey Me',1,17.99,'71fLz8qPk+L._AA1500_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Black holes ',5,9.99,'0825646350926.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Origin of Symmetry',5,9.99,'51E9eFgfw0L._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('The 2nd Law',1,17.99,'51Tf346S0uL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('The Resistance',1,17.99,'51VxX4VQbRL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('Funhouse',5,9.99,'518XhEMoPNL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('I M Not Dead',5,9.99,'51YOFH4CsCL._SL500_AA300_.jpg');
INSERT INTO ALBUM (TITRE, IDLABEL, PRIX, IMAGE) VALUES ('The Truth About Love',1,17.99,'51vEDVRD0BL._SL500_AA300_.jpg');

-- Artiste_Album Section
-- ___________________ 	
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (1,1);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (2,2);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (3,3);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (4,4);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (5,5);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (6,6);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (7,7);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (8,8);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (9,2);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (10,9);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (11,10);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (12,11);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (13,4);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (14,4);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (15,13);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (16,12);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (17,12);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (18,12);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (19,14);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (20,15);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (21,16);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (22,17);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (23,17);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (24,17);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (25,18);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (26,19);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (27,19);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (28,20);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (29,20);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (30,21);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (31,21);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (32,21);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (33,21);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (34,22);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (35,22);
INSERT INTO ARTISTE_ALBUM (IDALBUM,IDARTISTE) VALUES (36,22);

-- Utilisateurs Section
-- ___________________ 	
INSERT INTO UTILISATEUR (MAIL, NOM, PRENOM, ADR_RUE, ADR_NUMERO, ADR_BOITE, ADR_CODEPOSTAL, ADR_LOCALITE, NUMTEL, MOTDEPASSE) 
	VALUES ('jo.thillaye@gmail.com','Thillaye','Joachim','Rue de la Dodane',5,'',5000,'Namur','0484714106','a650497205cc32c3952ef1c132d757bd');
	
-- Promotions Section
--____________________
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2012-12-03','2012-12-09',30.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2012-12-10','2012-12-16',40.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2012-12-17','2012-12-23',20.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2012-12-24','2012-12-30',50.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2012-12-31','2013-01-06',60.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-01-07','2013-01-13',70.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-01-14','2013-01-20',80.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-01-21','2013-01-27',40.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-01-28','2013-02-03',45.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-02-04','2013-02-10',55.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-02-11','2013-02-17',65.00);
INSERT INTO PROMOTION (DATEDEB,DATEFIN,PRCREMISE) VALUES('2013-02-18','2013-02-24',70.00);


-- Promotion_Artiste Section
--____________________
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(2,1);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(3,2);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(4,3);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(5,4);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(6,5);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(7,6);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(8,7);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(9,8);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(10,9);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(11,10);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(12,11);
INSERT INTO PROMOTION_ARTISTE (IDARTISTE,IDPROMOTION) VALUES(13,12);

-- GenreAlbum
--____________________
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(1,1);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,2);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,3);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,4);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,5);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,6);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,7);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,8);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,9);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(3,10);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(3,11);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(3,12);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,13);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(4,14);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(5,15);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(5,16);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(5,17);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(5,18);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(5,19);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(5,20);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,21);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,22);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,23);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,24);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(6,25);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(1,26);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(1,27);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(1,28);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(1,29);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,30);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,31);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,32);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,33);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,34);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,35);
INSERT INTO GENREALBUM (IDGENRE,IDALBUM) VALUES(2,36);

-- Langue
--____________________
INSERT INTO MUSIC.LANGUE (IDLANGUE, LIBELLE) 
	VALUES ('en', 'English');
INSERT INTO MUSIC.LANGUE (IDLANGUE, LIBELLE) 
	VALUES ('fr', 'Français');
INSERT INTO MUSIC.LANGUE (IDLANGUE, LIBELLE) 
	VALUES ('nl', 'Nederlands');
	
-- Traduction album
--____________________
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (1, 'en', 'This Is It is a posthumous two-disc soundtrack album by American recording artist Michael Jackson.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (1, 'fr', 'Michael Jackson This Is It est à la fois une compilation et un double album posthume de Michael Jackson, sorti le 26 octobre 2009.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (1, 'nl', 'This Is It is de titel van het album van Michael Jackson. Het album verscheen op 25 oktober 2009. Jackson overleed op 25 juni 2009. Op dit album staan veertien bekende hits en twee nieuwe nummers.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (2, 'en', 'The Great Ray Charles is Ray Charles second album , released in 1957. It is an instrumental jazz album. Later CD re-issues often include as a bonus, six of eight tracks from The Genius After Hours.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (2, 'fr', 'The Great Ray Charles est le deuxième album de l artiste RnB Ray Charles sorti en 1957 . Une réédition de l album est sorti en 1990. Elle contient six des huit titres de l album The Genius After Hours.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (2, 'nl', 'The Great Ray Charles is het tweede album van RnB artiest Ray Charles uitgebracht in 1957. Een heruitgave van het album werd uitgebracht in 1990. Het bevat zes van de acht tracks van het album The Genius After Hours.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (3, 'en', 'One Love is the fourth studio album by French DJ David Guetta, first released in the United Kingdom on August 24, 2009.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (3, 'fr', 'One Love est le quatrième album studio du DJ et compositeur français David Guetta. Enregistré en 2008 et en 2009, l album est sorti le 24 août 2009');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (3, 'nl', 'One Love is het vierde studio-album van de Franse dj David Guetta. Het werd uitgebracht in de officiële iTunes Store op 21 augustus 2009. Het album werd in Europa op 24 augustus en in de VS op 25 augustus 2009 op cd uitgebracht.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (4, 'en', 'Alive 1997 is a live album by Daft Punk released in 2001. It contains a 45-minute excerpt of a live performance recorded at Birmingham s Que Club on November 8, 1997.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (4, 'fr', 'Alive 1997 est un album live de Daft Punk enregistré le 8 novembre 1997. ');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (4, 'nl', 'In 1997 kwam Daft Punk met hun eerste liveshow met onder andere de nummers Daftendirekt en Da Funk. Van deze liveshow werd ook een cd uitgebracht, Alive 1997, een 45 minuten durende cd die meegeleverd werd met een stickervel om het cd-doosje helemaal eigen te maken.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (5, 'en', 'Finale is a song performed by electropop producer Madeon. It was released on 22 July 2012.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (5, 'fr', 'Finale est une chanson jouée par le producteur élécropop Madeon. Il est sorti le 22 juillet 2012.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (5, 'nl', 'Finale is een lied uitgevoerd door de electro pop producer Madeon. Het werd uitgebracht 22 juli 2012.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (6, 'en', 'Due to Camo & Krooked success with Above & Beyond released in February 2010, they won Best Newcomer DJ s at the 2010 Drum & Bass: Arena Awards, and put out two mixes for BBC Radio 1 s Annie Nightingale, Fabio & Grooverider. Grooverider later quoted that Camo & Krooked are one of the biggest talents in Drum & Bass');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (6, 'fr', 'Grâce au succès Camo & Krooked avec Above & Beyond publié en Février 2010, ils ont remporté le prix Best Newcomer DJ au Tambour 2010 & Bass: Prix Arena, et sortir deux mixes BBC Radio 1 Annie Nightingale, Fabio & Grooverider. Grooverider ont ensuite dit que Camo & Krooked étaient l un des plus grands talents de Drum & Bass');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (6, 'nl', 'Als gevolg van Camo & Krooked succes met Above & Beyond uitgebracht in februari 2010, ze wonnen Beste Nieuwkomer DJ s op de 2010 Drum & Bass: Arena Awards en stak twee mixen voor BBC Radio 1 s Annie Nightingale, Fabio & Grooverider. Grooverider later geciteerd dat Camo & Krooked zijn een van de grootste talenten in de Drum & Bass.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (7, 'en', 'Power is the second studio album by the electronic dance music artist Boys Noize. The album was released on October 1, 2009.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (7, 'fr', 'Power est le deuxième album studio de l artiste dance électo Boys Noize. L album a été publié le Octobre 1, 2009');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (7, 'nl', 'Power is het tweede studio-album van de elektronische dansmuziek kunstenaar Boys Noize. Het album werd uitgebracht op 01 oktober 2009.');	
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (8, 'en', '"THE RULES OF DADA" are part of the Dada Life philosophy. These appear in their Facebook posts and in their tweets');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (8, 'fr', '"THE RULES OF DADA" maken deel uit van de Dada Life filosofie. Deze verschijnen in hun Facebook-berichten en in hun tweets.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (8, 'nl', '"THE RULES OF DADA" font partie de la philosophie de Dada Life. Celles-ci apparaissent dans leurs messages sur Facebook et dans leurs tweets.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (9, 'en', 'Genius Loves Company is the final studio album by rhythm and blues and soul musician Ray Charles, posthumously released August 31, 2004.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (9, 'fr', 'Genius Loves Company est le dernier album de Ray Charles. Il a remporté le Grammy Award de l album de l année en 2005.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (9, 'nl', 'Genius Loves Company is de laatste studio-album van rhythm and blues en soul muzikant Ray Charles, postuum uitgebracht 31 augustus 2004.');	
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (10, 'en', 'The last album of Andre Rieu out to brighten the Christmas celebration.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (10, 'fr', 'Le dernier album d Andre Rieu sorti pour égayer la fête de Noël.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (10, 'nl', 'Het laatste album van Andre Rieu uit naar de kerst fleuren.');	
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (11, 'en', 'The best of the best sitar player of all time.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (11, 'fr', 'Le best of du meilleur sitariste de tous les temps.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (11, 'nl', 'Het beste-of van het beste sitar speler aller tijden.');		
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (12, 'en', 'Wolfgang Amadeus Mozart (Composer), Daniel Barenboim (Piano), Christian Zacharias (piano) CD album. 6 Volumes - Released December 5, 2005.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (12, 'fr', ' Wolfgang Amadeus Mozart (Compositeur), Daniel Barenboïm (Piano), Christian Zacharias (Piano) CD album. 6 Volumes - Paru le 5 décembre 2005.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (12, 'nl', 'Wolfgang Amadeus Mozart (Composer), Daniel Barenboim (piano), Christian Zacharias (piano) CD album. 6 Volumes - Uitgebracht 05 december 2005.');	
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (13, 'en', 'Discovery is the second studio album by the French house duo Daft Punk, released in March 2001.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (13, 'fr', 'Discovery est le deuxième album studio du duo français Daft Punk, sorti en Mars 2001.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (13, 'nl', 'Discovery is het tweede studio-album van de Franse house duo Daft Punk, uitgebracht in maart 2001.');	
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (14, 'en', 'Homework is the debut studio album released by French electronic music duo Daft Punk in January 20, 1997.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (14, 'fr', 'Homework est le premier album studio publié par le duo électronique français Daft Punk en Janvier 20, 1997.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (14, 'nl', 'Homework is het debuut studio album uitgebracht door de Franse elektronische muziek duo Daft Punk in de 20 januari 1997.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (15, 'en', 'Live at River Plate is a live concert DVD documenting AC/DC’s Black Ice World Tour. The DVD includes footage from three concerts performed in December 2009 in Buenos Aires, Argentina.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (15, 'fr', 'Live at River Plate est un DVD du groupe de hard rock AC/DC sorti le 10 mai 2011 comprenant des performances live du groupe pendant leur tournée Black Ice World Tour.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (15, 'nl', 'Na de uiterst succesvolle release van Black Ice, begon AC/DC aan een 20 maanden durende wereldtour langs 108 steden; spelend voor meer dan 5 miljoen fans. Een van deze steden was Buenos Aires, Argentinie, waar 200,000 uitzinnige fans aanwezig waren bij 3 uitverkochte shows in December 2009.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (16, 'en', 'Living Things is the fifth studio album by the American rock band Linkin Park. It was released under Warner Bros. Records and Machine Shop Recordings on June 20, 2012, in Japan, and throughout the rest of the world during the following week.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (16, 'fr', 'Living Things est le cinquième album studio du groupe américain de rock Linkin Park. Il a été publié sous les labels Warner Bros. Records et Machine Shop Recordings, et est sorti le 20 juin 2012 au Japon et tout au long de la semaine suivante dans les autres parties du monde.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (16, 'nl', 'Geproduceerd door niemand minder dan Rick Rubin (Metallica, Adele) en bandlid Mike Shinoda. Het album is volgens Rolling Stone magazine het meest krachtige materiaal sinds hun mega debuut in 2000. De eerste single van het album is Burn It Down, een knallende track waarin zanger Chester Bennington zich weer van z''n beste kant laat horen.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (17, 'en', 'Meteora is het tweede studioalbum van de Amerikaanse rockband Linkin Park. Aan het door Don Gilmore geproduceerde album werd er tijdens het toeren in april 2002 begonnen met het schrijven en het opnemen en op 25 maart 2003 werd het album uitgebracht onder Warner Bros. en Machine Shop.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (17, 'fr', 'Meteora, sorti en 2003, est le deuxième album studio de Linkin Park. Ce disque a été critiqué pour sa durée très courte (36 minutes et 43 secondes). Meteora est d''un style plus "agressif", plus rapcore et moins nu metal, que le précédent Hybrid Theory et que le suivant Minutes to Midnight.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (17, 'nl', 'Meteora is het tweede studioalbum van de Amerikaanse rockband Linkin Park. Aan het door Don Gilmore geproduceerde album werd er tijdens het toeren in april 2002 begonnen met het schrijven en het opnemen en op 25 maart 2003 werd het album uitgebracht onder Warner Bros. en Machine Shop.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (18, 'en', 'Minutes to Midnight is the third studio album by American rock band Linkin Park, released on May 14, 2007, through Warner Bros. Records. The album was produced by Mike Shinoda and Rick Rubin.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (18, 'fr', 'Minutes to Midnight est le troisième album studio du groupe de nu metal américain Linkin Park. Il est sorti le 14 mai 2007 et le 15 mai 2007 en Amérique. Le nom de l''album fait référence à l''horloge de la fin du monde.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (18, 'nl', 'Minutes to Midnight is het derde studioalbum van rockband Linkin Park. Het is geproduceerd door Rick Rubin en Mike Shinoda en werd in 2007 uitgebracht onder het Warner Bros.-label.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (19, 'en', 'Machine Fucking Head Live is the second live album from the Amercian heavy metal band Machine Head. The album was released on November 13, 2012, under Roadrunner Records.[2] It was recorded at various tour stops across the globe last year during the bands world tour.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (19, 'fr', '9 ans après Hellalive (2003), Machine Head publie aujourd’hui son deuxième enregistrement en public intitulé Machine Fucking Head Live.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (19, 'nl', '9 jaar na hun eerste live plaat ‘Hellalive’ schotelt Machine Head ons een bisronde voor in de vorm van ‘Machine Fucking Head Live’.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (20, 'en', 'Metallica (also known as The Black Album) is the eponymously-titled fifth studio album by the American heavy metal band Metallica. It was released on August 12, 1991 through Elektra Records to critical acclaim.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (20, 'fr', 'L''album Metallica sort en 1991. Cet album devient vite le favori d''une certaine tranche des fans du groupe, qui le rebaptisent Black Album. Cet album est un des plus grands succès du groupe (plus de 30 millions d''exemplaires vendus à travers le monde), avec Master of Puppets.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (20, 'nl', 'Metallica is het vijfde studioalbum van Metallica. Het is beter bekend onder de naam The Black Album die het heeft gekregen vanwege de zwarte hoes die het album heeft. Verder staat er nog onduidelijk en schuin het logo van de band, en een slang die je goed ziet in het licht.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (21, 'en', 'Stoon Brother "is the first album of the young Baptiste Herbin who, accompanied by a rhythmic devil reveals his inspiration and worthy of the greatest.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (21, 'fr', '"Brother Stoon" est le premier album du jeune Baptiste Herbin qui, accompagné d''une rythmique du diable, révèle un son et une inspiration dignes des plus grands.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (21, 'nl', 'Stoon Brother "is het eerste album van de jonge Baptiste Herbin die, vergezeld van een ritmische duivel openbaart zijn inspiratie en waardig van de grootste.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (22, 'en', 'Diana Krall''s extraordinary new album ''Glad Rag Doll'' (October 2nd, Verve Records) is an exhilarating and adventurous exploration of new sounds, new instrumentation and new musicians. It stars a singer and piano player, filled with mischief, humour and a renewed sense of tenderness and intimacy.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (22, 'fr', '"Glad Rag Doll Diana Krall album extraordinaire (2 Octobre Verve Records) est une exploration exaltante et aventureux de nouveaux sons, de nouveaux instruments et de nouveaux musiciens. Il met en vedette un chanteur et joueur de piano, rempli de malice, d''humour et un sens renouvelé de tendresse et d''intimité.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (22, 'nl', 'Buitengewone nieuwe Diana Krall''s album "Glad Rag Doll" (2 oktober Verve Records) is een opwindende en avontuurlijke verkenning van nieuwe geluiden, nieuwe instrumenten en nieuwe muzikanten. Het sterren een zanger en pianist, gevuld met kattenkwaad, humor en een hernieuwd gevoel van tederheid en intimiteit.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (23, 'en', 'Diana Krall''s extraordinary new album ''Glad Rag Doll'' (October 2nd, Verve Records) is an exhilarating and adventurous exploration of new sounds, new instrumentation and new musicians. It stars a singer and piano player, filled with mischief, humour and a renewed sense of tenderness and intimacy.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (23, 'fr', '"Glad Rag Doll Diana Krall album extraordinaire (2 Octobre Verve Records) est une exploration exaltante et aventureux de nouveaux sons, de nouveaux instruments et de nouveaux musiciens. Il met en vedette un chanteur et joueur de piano, rempli de malice, d''humour et un sens renouvelé de tendresse et d''intimité.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (23, 'nl', 'Buitengewone nieuwe Diana Krall''s album "Glad Rag Doll" (2 oktober Verve Records) is een opwindende en avontuurlijke verkenning van nieuwe geluiden, nieuwe instrumenten en nieuwe muzikanten. Het sterren een zanger en pianist, gevuld met kattenkwaad, humor en een hernieuwd gevoel van tederheid en intimiteit.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (24, 'en', 'Diana Krall''s extraordinary new album ''Glad Rag Doll'' (October 2nd, Verve Records) is an exhilarating and adventurous exploration of new sounds, new instrumentation and new musicians. It stars a singer and piano player, filled with mischief, humour and a renewed sense of tenderness and intimacy.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (24, 'fr', '"Glad Rag Doll Diana Krall album extraordinaire (2 Octobre Verve Records) est une exploration exaltante et aventureux de nouveaux sons, de nouveaux instruments et de nouveaux musiciens. Il met en vedette un chanteur et joueur de piano, rempli de malice, d''humour et un sens renouvelé de tendresse et d''intimité.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (24, 'nl', 'Buitengewone nieuwe Diana Krall''s album "Glad Rag Doll" (2 oktober Verve Records) is een opwindende en avontuurlijke verkenning van nieuwe geluiden, nieuwe instrumenten en nieuwe muzikanten. Het sterren een zanger en pianist, gevuld met kattenkwaad, humor en een hernieuwd gevoel van tederheid en intimiteit.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (25, 'en', 'Let Them Talk is the debut album by English actor, writer, and musician Hugh Laurie. The album, which consists of classic blues songs, was released on 9 May 2011.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (25, 'fr', 'Let Them Talk est le 1er album studio de Hugh Laurie. C''est un album de reprises de « classiques » du Blues américain de La Nouvelle-Orléans. Il a été certifié disque de platine en France.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (25, 'nl', 'Het album "Let Them Talk" is geproduceerd door rootsmuzikant en producer Joe Henry. Laurie''s stijl leunt tegen New Orleans-blues en zydeco.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (26, 'en', 'Born to Die is the major label debut studio album by American singer-songwriter Lana Del Rey. The album was released on January 27, 2012 on iTunes and on January 31, 2012 by Interscope Records, Polydor Records, and Stranger Records.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (26, 'fr', 'Born to Die est le 2e album de Lana Del Rey. Il sort le 27 janvier 2012 en Suisse et le 30 janvier 2012 en France. Il comprend les singles Video Games, Born to Die, Blue Jeans, Summertime Sadness et National Anthem');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (26, 'nl', 'Slechts weinig artiesten kwamen ons in 2011 zo onverwachts op ons dak vallen als Lana Del Rey. De 24-jarige New-Yorkse met haar hypnotiserende stemgeluid verraste iedereen met het betoverende "Video Games".');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (27, 'en', '"Video Games" is the debut single of American singer-songwriter Lana Del Rey. A chamber pop ballad with indie pop and trip hop elements, the song was produced by Robopop. The lyrics and musical composition are attributed to Del Rey and Justin Parker, author of "Blue Jeans" and "Born to Die".');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (27, 'fr', 'Video Games est une chanson de la chanteuse américaine Lana Del Rey sortie le 10 octobre 2011. La chanson a été écrite par Elizabeth Grant (Lana Del Rey), Justin Parker et produite par Justin Parker, RoboPop. Elle a été élue chanson de l''année 2011 par le magazine anglais NME.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (27, 'nl', 'Video Games is een single van de Amerikaanse singer-songwriter Lana Del Rey van haar album Born to Die.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (28, 'en', '"Bleu noir" is a 2010 song by French pop musician Mylène Farmer. It is the second single to her eighth studio album Bleu Noir, released in December 2010. The song was written and produced by Moby with lyrics by Farmer, and the music video produced by French film director Olivier Dahan.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (28, 'fr', 'Bleu noir est une chanson de la chanteuse de pop française Mylène Farmer extrait de son huitième album studio également intitulé Bleu noir (2010). Le titre est sorti en tant que second single de l''album le 18 avril 2011.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (28, 'nl', 'Blauw zwart is een lied van de Franse popzanger Mylène Farmer van zijn achtste studio album ook met de titel Blauw (2010). De titel werd uitgebracht als de tweede single van het album 18 april 2011.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (29, 'en', 'Monkey Me is the ninth studio album by French singer-songwriter Mylène Farmer, and her 18th album overall. Preceded by the lead single "À l''ombre" which peaked at number-one in France, the album was released on 3 December 2012.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (29, 'fr', 'Monkey Me est le 9e album studio de la chanteuse Mylène Farmer sorti le 3 décembre 2012. Une tournée baptisée Timeless 2013 débutera à Paris-Bercy du 7 au 21 septembre 2013 suivie d''une tournée française et internationale (Russie, Suisse, Belgique).');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (29, 'nl', 'Monkey mij is de negende studio-album van de Franse singer-songwriter Mylène Farmer, en haar 18e album algemeen. Voorafgegaan door de eerste single "À l''ombre", die piekte op nummer een in Frankrijk, werd het album uitgebracht op 3 december 2012.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (30, 'en', 'Black Holes and Revelations is the fourth studio album by the English rock band Muse, released on 3 July 2006. It gets its title from a line in the song "Starlight" which is the second track on the album.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (30, 'fr', 'Black Holes and Revelations est le quatrième album du groupe de rock britannique Muse, sorti en 2006. L''album a été enregistré en France et à New York et marque un nouveau changement de style musical pour le groupe.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (30, 'nl', 'Black Holes and Revelations is het vierde studioalbum van de Britse rockband Muse. Het werd via Warner Music Group op 30 juni 2006 uitgebracht. Het album werd in 2005 en 2006 opgenomen in Zuid-Frankrijk en New York City met producer Rich Costey.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (31, 'en', 'Origin of Symmetry is the second studio album by English alternative rock band Muse, released on 17 July 2001 by Taste Records. In the UK it reached #3 and was certified platinum.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (31, 'fr', 'Origin of Symmetry est le deuxième album de Muse, sorti en 2001. Plug In Baby, New Born, Bliss, Feeling Good et Hyper Music sont les singles de cet album. Le dernier (Feeling Good/Hyper Music) est un double-A-side c’est-à-dire un double-single.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (31, 'nl', 'Origin of Symmetry is het tweede album van de Britse rockgroep Muse. Het verscheen via Mushroom Records op 17 juni 2001. Muse begon in 2000 met het schrijven en opnemen van de eerste nieuwe nummers, in samenwerking met producer David Bottrill.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (32, 'en', 'The 2nd Law is the sixth studio album by English alternative rock band Muse, released throughout most of the world on 28 September 2012, and elsewhere on 2 October 2012.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (32, 'fr', 'The Second Law (ou The 2nd Law selon la graphie de l''album) est le sixième album studio du groupe britannique Muse, après The Resistance. Il est l''unique album du groupe à se classer Numéro 1 des ventes mondiales dans les charts et ce en seulement deux semaines et à rester plus d''une semaine numéro 1 des charts françaises.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (32, 'nl', 'The 2nd Law is het zesde studioalbum van de Britse rockband Muse. In Nederland en andere Europese landen kwam het album op 28 september uit, in de Verenigde Staten, Italië en Canada op 2 oktober, en in Zweden en Japan op 3 oktober 2012.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (33, 'en', 'The Resistance is the fifth studio album by the English alternative rock band Muse, released in Europe on 14 September 2009, and in North America on 15 September 2009. On its release, it topped the album charts in 19 countries.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (33, 'fr', 'The Resistance est le cinquième album studio du groupe de rock britannique Muse. Édité par Warner Bros., il est sorti le 11 septembre 2009 en Belgique, Italie et Allemagne et le 14 septembre 2009 dans le reste de l''Europe.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (33, 'nl', 'The Resistance is het vijfde studioalbum van de Britse alternatieve rockband Muse. Het werd uitgebracht op 14 september 2009; op 3 juli werd de tracklist van het album al bekendgemaakt op twitter.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (34, 'en', 'Funhouse is the fifth studio album by American singer-songwriter Pink, released by LaFace Records worldwide in October 24, 2008. The album debuted at number two on the Billboard 200 chart, selling 180,000 copies in its first week and reached number one on the charts in six countries.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (34, 'fr', 'Funhouse est le cinquième album de la chanteuse américaine P!nk sorti en 2008. Le premier single So What a été son premier no 1 au Billboard, le célèbre classement des singles les plus vendus aux États-Unis.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (34, 'nl', 'Funhouse is het vijfde album van de Amerikaanse zangeres P!Nk uitgebracht in 2008. De eerste single So What was zijn eerste nummer 1 in de Billboard, de rangschikking van de beroemde best verkopende singles in de Verenigde Staten.');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (35, 'en', 'I''m Not Dead is the fourth studio album by American recording artist and songwriter Pink. The album was released on April 4, 2006 in the United States, to coincide the same release date of P!nk''s debut album, Can''t Take Me Home (2000).');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (35, 'fr', 'I''m Not Dead, un album pop-rock qui se concentre sur les dérives américaines et celles de son président ; elle souligne le manque de réflexion de celui-ci dans la chanson Dear Mr. President.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (35, 'nl', 'I''m Not Dead is het vierde studio-album van de Amerikaanse artiest en songwriter Pink. Het album werd uitgebracht op 4 april 2006 in de Verenigde Staten, om dezelfde release datum valt samen van P!Nk''s debuut album, Kan niet Take Me Home (2000).');
--
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (36, 'en', 'The Truth About Love is the sixth studio album by American recording artist and songwriter Pink, released on September 14, 2012, by RCA Records. The first single from The Truth About Love, "Blow Me (One Last Kiss)" was released in July 2012.');

INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (36, 'fr', 'The Truth About Love est le sixième album studio de la chanteuse américaine Pink sorti le 14 septembre 2012. Deux singles en sont extraits Blow Me (One Last Kiss) et Try.');
	
INSERT INTO MUSIC.TRADUCTIONALBUM (IDALBUM, IDLANGUE, TRADDESCRIPTIFALBUM) 
	VALUES (36, 'nl', 'The Truth About Love is het zesde studio album van de Amerikaanse zangeres Pink Uitgebracht op 14 september 2012. Twee singles worden gewonnen Blow Me (One Last Kiss) en probeer het.');
