-- *********************************************
-- * Standard SQL generation                   
-- *--------------------------------------------
--DROP TABLE TRADUCTIONPROMOTION;
--DROP TABLE GenreAlbum;
--DROP TABLE ARTISTE_ALBUM;
--DROP TABLE LIGNECOMMANDE;
--DROP TABLE PROMOTION_ARTISTE;
--DROP TABLE TITRE_ALBUM;
--DROP TABLE TRADUCTIONALBUM;
--DROP TABLE TRADUCTIONARTISTE;
--DROP TABLE ALBUM;
--DROP TABLE ARTISTE;
--DROP TABLE CHANSON;
--DROP TABLE COMMANDE;
--DROP TABLE GENRE;
--DROP TABLE LABEL;
--DROP TABLE LANGUE;
--DROP TABLE PROMOTION;
--DROP TABLE UTILISATEUR;

create table Album (
     IDAlbum int not null GENERATED ALWAYS AS IDENTITY
     (START WITH 1, INCREMENT BY 1),
     Titre varchar(255) not null,
     IDLabel int not null,
     Prix numeric(4,2) not null,
	 Image varchar(255),
     constraint ID_Album_ID primary key (IDAlbum));

create table Artiste (
     IDArtiste int not null GENERATED ALWAYS AS IDENTITY
     (START WITH 1, INCREMENT BY 1),
     Nom varchar(50) not null,
     constraint ID_Artiste_ID primary key (IDArtiste));

create table Artiste_Album (
     IDAlbum int not null,
     IDArtiste int not null,
     constraint ID_Artiste_Album_ID primary key (IDArtiste, IDAlbum));

create table Chanson (
     IDTitre int not null GENERATED ALWAYS AS IDENTITY
     (START WITH 1, INCREMENT BY 1),
     Titre varchar(100) not null,
     constraint ID_Chanson_ID primary key (IDTitre));

create table Commande (
     IDCommande int not null GENERATED ALWAYS AS IDENTITY
     (START WITH 1, INCREMENT BY 1),
     IDUtilisateur int not null,
     Date date not null,
     constraint ID_Commande_ID primary key (IDCommande));

create table Label (
     IDLabel int not null GENERATED ALWAYS AS IDENTITY
     (START WITH 1, INCREMENT BY 1),
     Nom varchar(50) not null,
	 Image varchar(255),
     constraint ID_Label_ID primary key (IDLabel));

create table Langue (
     IDLangue varchar(2) not null,
     Libelle varchar(20) not null,
     constraint ID_Langue_ID primary key (IDLangue));

create table LigneCommande (
     IDAlbum int not null,
     IDCommande int not null,
     Quantite int not null,
     Prix numeric(5,2) not null,
     constraint ID_LigneCommande_ID primary key (IDAlbum, IDCommande));

create table Promotion (
     IDPromotion int not null GENERATED ALWAYS AS IDENTITY
     (START WITH 1, INCREMENT BY 1),
     DateDeb date not null,
     DateFin date not null,
     PrcRemise numeric(4,2) not null,
     constraint ID_Promotion_ID primary key (IDPromotion));

create table Promotion_Artiste (
     IDArtiste int not null,
     IDPromotion int not null,
     constraint ID_Promotion_Artiste_ID primary key (IDArtiste, IDPromotion));

create table Titre_Album (
     IDAlbum int not null,
     IDTitre int not null,
     constraint ID_Titre_Album_ID primary key (IDAlbum, IDTitre));

create table TraductionAlbum (
     IDAlbum int not null, 
     IDLangue varchar(2) not null,
     TradDescriptifAlbum varchar(1000) not null,
     constraint ID_TraductionAlbum_ID primary key (IDLangue, IDAlbum));

	 
create table GenreAlbum(
		IDGenre int not null,
		IDAlbum int not null,
		constraint ID_GenreAlbum_ID primary key(IDGenre,IDAlbum));
	 
create table Genre(
		IDGenre int not null GENERATED ALWAYS AS IDENTITY
		(START WITH 1, INCREMENT BY 1),
		Label varchar(255) not null,
		constraint ID_Genre_ID primary key(IDGenre));



create table Utilisateur (        
     IDUtilisateur int not null GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
     Mail varchar(255) not null UNIQUE,
     Nom varchar(100) not null,
     Prenom varchar(100) not null,
     Adr_Rue varchar(255) not null,
     Adr_Numero int not null,
     Adr_Boite varchar(10) not null,
     Adr_CodePostal int not null,
     Adr_Localite varchar(100) not null,
     NumTel varchar(30) not null,
     MotDePasse varchar(255) not null,
     constraint ID_Utilisateur_ID primary key (IDUtilisateur));


-- Constraints Section
-- ___________________ 

alter table GenreAlbum add constraint FKGenreAlbum_FK
	foreign key(IDGenre)
	references Genre;

alter table GenreAlbum add constraint FKAlbumGenre_FK
	foreign key(IDAlbum)
	references Album;	
	
alter table Album add constraint FKLabel_Artiste_FK
     foreign key (IDLabel)
     references Label;

alter table Artiste_Album add constraint FKArt_Art
     foreign key (IDArtiste)
     references Artiste;

alter table Artiste_Album add constraint FKArt_Alb_FK
     foreign key (IDAlbum)
     references Album;

alter table Commande add constraint FKUtilCommande_FK
     foreign key (IDUtilisateur)
     references Utilisateur;

alter table LigneCommande add constraint FKLig_Com_FK
     foreign key (IDCommande)
     references Commande;

alter table LigneCommande add constraint FKLig_Alb
     foreign key (IDAlbum)
     references Album;

alter table Promotion_Artiste add constraint FKPro_Pro_FK
     foreign key (IDPromotion)
     references Promotion;

alter table Promotion_Artiste add constraint FKPro_Art
     foreign key (IDArtiste)
     references Artiste;

alter table Titre_Album add constraint FKTit_Cha_FK
     foreign key (IDTitre)
     references Chanson;

alter table Titre_Album add constraint FKTit_Alb
     foreign key (IDAlbum)
     references Album;

alter table TraductionAlbum add constraint FKTra_Lan_3
     foreign key (IDLangue)
     references Langue;

alter table TraductionAlbum add constraint FKTra_Alb_FK
     foreign key (IDAlbum)
     references Album;


ALTER TABLE LigneCommande
ADD CHECK (QUANTITE>0);

ALTER TABLE LigneCommande
ADD CHECK (QUANTITE<=100);

ALTER TABLE LigneCommande
ADD CHECK(PRIX>0);


-- Index Section
-- _____________ 

create unique index ID_Album_IND
     on Album (IDAlbum);

create index FKLabel_Artiste_IND
     on Album (IDLabel);

create unique index ID_Artiste_IND
     on Artiste (IDArtiste);

create unique index ID_Artiste_Album_IND
     on Artiste_Album (IDArtiste, IDAlbum);

create index FKArt_Alb_IND
     on Artiste_Album (IDAlbum);

create unique index ID_Chanson_IND
     on Chanson (IDTitre);

create unique index ID_Commande_IND
     on Commande (IDCommande);

create index FKUtilCommande_IND
     on Commande (IDUtilisateur);

create unique index ID_Genre_IND
     on Genre (IDGenre);

create unique index ID_Label_IND
     on Label (IDLabel);

create unique index ID_Langue_IND
     on Langue (IDLangue);

create unique index ID_LigneCommande_IND
     on LigneCommande (IDAlbum, IDCommande);

create index FKLig_Com_IND
     on LigneCommande (IDCommande);

create unique index ID_Promotion_IND
     on Promotion (IDPromotion);

create unique index ID_Promotion_Artiste_IND
     on Promotion_Artiste (IDArtiste, IDPromotion);

create index FKPro_Pro_IND
     on Promotion_Artiste (IDPromotion);

create unique index ID_Titre_Album_IND
     on Titre_Album (IDAlbum, IDTitre);

create index FKTit_Cha_IND
     on Titre_Album (IDTitre);


create unique index ID_Utilisateur_IND
     on Utilisateur (IDUtilisateur);

