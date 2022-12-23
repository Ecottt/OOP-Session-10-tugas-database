-- Nama Database: esports_team

CREATE DATABASE esports_team;
USE esports_team;

-- Membuat Tabel coach

CREATE TABLE coach (
  coach_id char(5) NOT NULL,
  coach_name varchar(40) NOT NULL,
  coach_age int(11) NOT NULL,
  coach_contact varchar(40) NOT NULL,
  PRIMARY KEY (coach_id)
);

-- Membuat Data ke Tabel Coach

INSERT INTO coach (coach_id,coach_name,coach_age,coach_contact) VALUES
('CH001','Topson',24,'3584576349284'),
('CH002','Sebastian',30,'33894092745'),
('CH003','Jerax',30 ,'3584592872971');

-- Membuat Tabel Team

CREATE TABLE team (
  coach_id char(5),
  team_name varchar(40) NOT NULL,
  date_registered date NOT NULL,
  team_rating char(2) NOT NULL,
  PRIMARY KEY (team_name),
  FOREIGN KEY (coach_id) REFERENCES coach(coach_id)
);

-- Memasukkan Data ke Tabel Team

INSERT INTO team (coach_id,team_name,date_registered,team_rating) VALUES
('CH001','OD','2015-05-05','A-'),
('CH002','OF','2015-07-07','A'),
('CH003','OT','2015-03-03','A+');

-- Membuat Tabel Player

CREATE TABLE player (
  team_name varchar(40),
  player_id char(5) NOT NULL,
  player_name varchar(40) NOT NULL,
  player_age int(11) NOT NULL,
  player_pos char(7) NOT NULL,
  PRIMARY KEY (player_id),
  FOREIGN KEY (team_name) REFERENCES team(team_name)
);

-- Memasukkan Data ke Tabel Player

INSERT INTO player (team_name,player_id,player_name,player_age,player_pos) VALUES
('OD','SS001','Fy',27,'SoftSupport'),
('OF','SS002','Iceice',27,'SoftSupport'),
('OT','SS003','KuroKy',30,'SoftSupport'),
('OD','HS001','Saksa',27,'HardSupport'),
('OF','HS002','Fly',29,'HardSupport'),
('OT','HS003','Y"',24,'HardSupport'),
('OD','OL001','Iceiceice',32,'Offlane'),
('OF','OL002','Forev',31,'Offlane'),
('OT','OL003','Kuku',26,'Offlane'),
('OD','ML001','SumaiL',23,'Midlane'),
('OF','ML002','MATUMBAMAN',25,'Midlane'),
('OT','ML003','Mushi',32,'Midlane');
('OD','CY003','Arteezy',26,'Carry');
('OF','CY003','Ana',23,'Carry');
('OT','CY003','Miracle-',25,'Carry');

-- Melihat isi Tabel

SELECT * FROM coach;

SELECT * FROM team;

SELECT * FROM player WHERE team_name = 'OD';

SELECT * FROM player WHERE team_name = 'OF';

SELECT * FROM player WHERE team_name = 'OT';
