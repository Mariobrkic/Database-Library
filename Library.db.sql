BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Korisnik" (
	"KorisnikID"	INTEGER NOT NULL,
	"Ime"	TEXT NOT NULL,
	"Prezime"	TEXT NOT NULL,
	"Adresa"	TEXT NOT NULL,
	"Grad"	TEXT NOT NULL,
	PRIMARY KEY("KorisnikID")
);
CREATE TABLE IF NOT EXISTS "Knjige" (
	"KnjigaID"	NUMERIC NOT NULL,
	"Naslov"	TEXT,
	"Autor"	TEXT NOT NULL,
	"Naklada"	TEXT NOT NULL,
	"Godina Izdanja"	NUMERIC NOT NULL,
	"Prevoditelj "	TEXT,
	"DatumPosudbe"	NUMERIC,
	PRIMARY KEY("KnjigaID")
);
CREATE TABLE IF NOT EXISTS "Posudbe" (
	"PosudbaID"	INTEGER NOT NULL,
	"KnjigaID"	NUMERIC NOT NULL,
	"KorisnikID"	INTEGER NOT NULL,
	"TrajanjePosudbe"	NUMERIC NOT NULL,
	PRIMARY KEY("PosudbaID")
);
INSERT INTO "Korisnik" VALUES (1,'Mario ','Brkić','Put Pudarice 30 C','23000 Zadar');
INSERT INTO "Korisnik" VALUES (2,'Mate','Kardum','Put Pudarice 13 A','23000 Zadar');
INSERT INTO "Korisnik" VALUES (3,'Antonio ','Babaić','Rastočine','51000 Rijeka');
INSERT INTO "Korisnik" VALUES (4,'Roko ','Nakić','Hrvatskog sabora 8','23000 Zadar');
INSERT INTO "Korisnik" VALUES (5,'Rafael ','Kačinari','Ivana Gorana Kovačića 22','23000 Zadar');
INSERT INTO "Korisnik" VALUES (6,'Mario ','Brkić','Ulica Grge Tuškana 7','10000 Zagreb');
INSERT INTO "Knjige" VALUES (1,'Rakova Obratnica','Henry Miller','Naklada Libar',1978,'Antun Šoljan',NULL);
INSERT INTO "Knjige" VALUES (2,'Filozofija 3 Misli 1','Blaise Pascal ','BIGZ',1980,'Miodrag Ibrovac',NULL);
INSERT INTO "Knjige" VALUES (3,'Filozofija 3 Misli 2','Blaise Pascal ','BIGZ',1980,'Miodrag Ibrovac',NULL);
INSERT INTO "Knjige" VALUES (4,'Ličnost u psihologiji','John Redford, Richard Kirby','Metheun, London',1975,'Mirjana Joanović',NULL);
INSERT INTO "Knjige" VALUES (5,'Braća Karamazovi','F.M. Dostojevski','Znanje Zagreb',1987,'Veljko Lukić, Jakša Kušan',NULL);
INSERT INTO "Knjige" VALUES (6,'Nakon potresa','Haruki Murakami ','Vuković i Runjić',2011,'Maja Šoljan',NULL);
INSERT INTO "Knjige" VALUES (7,'Grobnica za Borisa Davidovića','Danilo Kiš ','BIGZ',1987,NULL,NULL);
INSERT INTO "Knjige" VALUES (8,'King Lear','William Shakespeare','Collins Classics',2011,NULL,NULL);
INSERT INTO "Knjige" VALUES (9,'Kome Zvono Zvoni ','Ernest Hemingway','Zora Zagreb',1965,'Šime Balen',NULL);
INSERT INTO "Knjige" VALUES (10,'Gledišta Jednog Klauna','Heinrich Boll','August Cesarec Zagreb',1989,'Sonja Đerasimović',NULL);
INSERT INTO "Knjige" VALUES (11,'Pokojni Matija Pascal','Luigi Pirandello','Svjetlost Sarajevo',1966,'Jugana Stojanović',NULL);
INSERT INTO "Knjige" VALUES (12,'Šok Koridor','Michael Avallon','Alibi krimi biblioteka',2002,'Nebojša Radić',NULL);
INSERT INTO "Knjige" VALUES (13,'Priče o običnom ludilu ','Charles Bukowski','Šareni Dućan Koprivnica',2008,'Zoran Tomić',NULL);
INSERT INTO "Knjige" VALUES (14,'Život je Negdje Drugdje','Milan Kundera','Znanje Zagreb',1979,'Nikola Kršić',NULL);
INSERT INTO "Knjige" VALUES (15,'Neznanje','Milan Kundera','Meandar',2008,'Vanda Mikšić',NULL);
INSERT INTO "Knjige" VALUES (16,'Šala','Milan Kundera','Znanje ',1982,'Nikola Kršić',NULL);
INSERT INTO "Knjige" VALUES (17,'Slasti Japana','Ludovic Naudeau','Zemaljska tiskara Zagreb',1922,'Dr. Nikola Andrić',NULL);
INSERT INTO "Knjige" VALUES (18,'Film i Marksizam','Dr. Milan Damjanović','Insitut za film',1981,NULL,NULL);
INSERT INTO "Knjige" VALUES (19,'Monologhi','Paolo Rossi','Gremese Editore',1989,NULL,NULL);
INSERT INTO "Knjige" VALUES (20,'Candide Zadig','Voltaire','Dani Biblioteka',2004,'R.M. Šurbatović',NULL);
INSERT INTO "Knjige" VALUES (21,'Priče za nesanicu','Alfred Hitchcock','Večernjakova biblioteka',2004,'Borivoj Jurković',NULL);
INSERT INTO "Knjige" VALUES (22,'Samo deca','Patty Smith','Rende',2013,'Periša Perišić',NULL);
INSERT INTO "Knjige" VALUES (23,'Roman o Londonu, prva knjiga','Miloš Crnjanski','Svjetlost Sarajevo',1989,NULL,NULL);
INSERT INTO "Knjige" VALUES (24,'Odgoj Djevojaka u Češkoj','Michal Viewegh','DiVić',1997,'Dagmar Ruljančič',NULL);
INSERT INTO "Knjige" VALUES (25,'Tajno Oružje','Julio Cortazar','Šareni Dućan Koprivnica',2011,'Tanja Tarbuk',NULL);
INSERT INTO "Knjige" VALUES (26,'Amerika','Franz Kafka','Šareni Dućan Koprivnica',2006,'Zlatko Crnković',NULL);
INSERT INTO "Knjige" VALUES (27,'Lolita','Vladimir Nabokov','Biblioteka Jutarnjeg Lista',2004,'Zlatko Crnković',NULL);
INSERT INTO "Knjige" VALUES (28,'Stranac','Albert Camus','Biblioteka Jutarnjeg Lista',2004,NULL,NULL);
INSERT INTO "Knjige" VALUES (29,'Kriza Psihoanalize','Erich Fromm','Naprijed',1984,'Stanislav Tuksar, Lidija Lisicki- Kolman, Branko Petrović',NULL);
INSERT INTO "Knjige" VALUES (30,'Dnevnik ','Franz Kafka','Zora',1968,'Traute Šegedin',NULL);
INSERT INTO "Knjige" VALUES (31,'Dogma o Kristu, Bit ćete kao Bog, Psihoanaliza i religija','Erich Fromm','Naprijed',1984,'Gvozden Flego',NULL);
INSERT INTO "Knjige" VALUES (32,'Egzil ','Enzo Bettiza','Marijan tisak ',2001,'Karmen Milačić, Ana Prpić',NULL);
INSERT INTO "Knjige" VALUES (33,'Priče o Kronopijima i Famama','Julio Cortazar','Šareni Dućan Koprivnica',2010,'Nikolina Židek',NULL);
INSERT INTO "Knjige" VALUES (34,'Historija Marksizma','Predrag Vranicki ','Naprijed','1946-1971',NULL,NULL);
INSERT INTO "Knjige" VALUES (35,'Školice','Julio Cortazar','Pelago',2009,'Dinko Telećan',NULL);
INSERT INTO "Knjige" VALUES (36,'Imaju svi pravo ','Paolo Sorrentino ','Vuković i Runjić',2013,'Mate Maras',NULL);
INSERT INTO "Knjige" VALUES (37,'Dobitnici ','Julio Cortazar','svetskaknjiževnost',1960,'Aleksandra Matić',NULL);
INSERT INTO "Knjige" VALUES (38,'La Fattoria Degli Animali','George Orwell','Oscar Mondadori',1964,'Bruno Tasso',NULL);
INSERT INTO "Knjige" VALUES (39,'Lanzarote i drugi tekstovi ','Michel Huollebecq','Litteris',2007,NULL,NULL);
INSERT INTO "Knjige" VALUES (40,'Noćne Priče ','Goran Tribuson','Mozaik Knjiga',2010,'',NULL);
INSERT INTO "Knjige" VALUES (41,'Čovjek bez osobina','Robert Musil','Fraktura',2008,'Andy Jelčić',NULL);
INSERT INTO "Knjige" VALUES (42,'Asser Savus','Miroslav S. Mađer','Alfa August Cesarec',1987,NULL,NULL);
INSERT INTO "Knjige" VALUES (43,'Il Principe ','Niccolo Machiavelli','Mondadori',2016,NULL,NULL);
INSERT INTO "Knjige" VALUES (44,'Talijanska Gramatika','Josip Jernej','Školska knjiga Zagreb',2004,NULL,NULL);
INSERT INTO "Posudbe" VALUES (1,1,1,2);
INSERT INTO "Posudbe" VALUES (2,22,2,6);
INSERT INTO "Posudbe" VALUES (3,33,3,7);
INSERT INTO "Posudbe" VALUES (4,4,4,22);
INSERT INTO "Posudbe" VALUES (5,19,5,14);
INSERT INTO "Posudbe" VALUES (6,2,6,35);
INSERT INTO "Posudbe" VALUES (7,12,1,12);
INSERT INTO "Posudbe" VALUES (8,22,3,33);
INSERT INTO "Posudbe" VALUES (9,31,5,20);
INSERT INTO "Posudbe" VALUES (10,14,2,19);
INSERT INTO "Posudbe" VALUES (11,40,4,18);
INSERT INTO "Posudbe" VALUES (12,39,6,21);
INSERT INTO "Posudbe" VALUES (13,27,1,23);
INSERT INTO "Posudbe" VALUES (14,26,3,24);
INSERT INTO "Posudbe" VALUES (15,11,5,25);
CREATE VIEW Pregled as

SELECT p.PosudbaID, p.KnjigaID, k.Naslov, k.Ime, k.Prezime, (k.DatumPosudbe * p.TrajanjePosudbe) as Zakasnina
FROM Posudbe p
JOIN Knjige k 
ON p.KnjigaID = k.KnjigaID

JOIN Korisnik k
ON p.KorisnikId = k.KorisnikId;
COMMIT;
