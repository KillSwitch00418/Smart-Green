DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS greenhousedata;



CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  upassword TEXT NOT NULL,
  alias TEXT NOT NULL,
  temp TEXT NOT NULL
);

CREATE TABLE greenhousedata (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  recordtime TEXT NOT NULL,
  yield REAL NOT NULL,
  temperature REAL NOT NULL,
  humidity REAL NOT NULL,
  nutrients REAL NOT NULL,
  co2 REAL NOT NULL,
  moisture REAL NOT NULL,
  light REAL NOT NULL
);

INSERT INTO users (username, upassword, alias) VALUES("user1", "pass1", "me",0);
INSERT INTO users (username, upassword, alias) VALUES("user2", "pass2", "you",0);
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 00:00:00.0", "1874.79","67.8","62.0","2200.0","315.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 03:00:00.0", "0","68.1","63.1","2200.0","310.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 06:00:00.0", "0","72.4","57.4","2170.0","310.0","72","135.2");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 09:00:00.0", "0","75.2","56.6","2170.0","310.0","73","225.3");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 12:00:00.0", "0","79.6","52.9","2170.0","310.0","71","255.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 15:00:00.0", "0","80.4","53.8","2250.0","310.0","76","265.7");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 18:00:00.0", "0","77.1","57.1","2250.0","315.0","73","205.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-21-04 21:00:00.0", "0","71.2","56.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 00:00:00.0", "2123.4","67.8","62.0","2200.0","315.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 03:00:00.0", "0","68.1","63.1","2200.0","310.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 06:00:00.0", "0","72.4","57.4","2170.0","310.0","72","135.2");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 09:00:00.0", "0","75.2","56.6","2170.0","310.0","73","225.3");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 12:00:00.0", "0","79.6","52.9","2170.0","310.0","71","255.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 15:00:00.0", "0","80.4","53.8","2250.0","310.0","76","265.7");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 18:00:00.0", "0","77.1","57.1","2250.0","315.0","73","205.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 21:00:00.0", "0","71.2","56.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 00:00:00.0", "1999.01","67.8","62.0","2200.0","315.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 03:00:00.0", "0","68.1","63.1","2200.0","310.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 06:00:00.0", "0","72.4","57.4","2170.0","310.0","72","135.2");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 09:00:00.0", "0","75.2","56.6","2170.0","310.0","73","225.3");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 12:00:00.0", "0","79.6","52.9","2170.0","310.0","71","255.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 15:00:00.0", "0","80.4","53.8","2250.0","310.0","76","265.7");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 18:00:00.0", "0","77.1","57.1","2250.0","315.0","73","205.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-22-04 21:00:00.0", "0","71.2","56.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 00:00:00.0", "1198.11","69.3","61.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 03:00:00.0", "0","68.1","63.1","2200.0","310.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 06:00:00.0", "0","72.4","57.4","2170.0","310.0","72","135.2");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 09:00:00.0", "0","75.2","56.6","2170.0","310.0","73","225.3");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 12:00:00.0", "0","79.6","52.9","2170.0","310.0","71","255.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 15:00:00.0", "0","80.4","53.8","2250.0","310.0","76","265.7");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 18:00:00.0", "0","77.1","57.1","2250.0","315.0","73","205.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-23-04 21:00:00.0", "0","71.2","56.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 00:00:00.0", "1874.79","67.8","62.0","2200.0","315.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 03:00:00.0", "0","68.1","63.1","2200.0","310.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 06:00:00.0", "0","72.4","57.4","2170.0","310.0","72","135.2");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 09:00:00.0", "0","75.2","56.6","2170.0","310.0","73","225.3");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 12:00:00.0", "0","79.6","52.9","2170.0","310.0","71","255.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 15:00:00.0", "0","80.4","53.8","2250.0","310.0","76","265.7");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 18:00:00.0", "0","77.1","57.1","2250.0","315.0","73","205.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 21:00:00.0", "0","71.2","56.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 00:00:00.0", "1555.32","69.3","61.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 03:00:00.0", "0","68.1","63.1","2200.0","310.0","75","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 06:00:00.0", "0","72.4","57.4","2170.0","310.0","72","135.2");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 09:00:00.0", "0","75.2","56.6","2170.0","310.0","73","225.3");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 12:00:00.0", "0","79.6","52.9","2170.0","310.0","71","255.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 15:00:00.0", "0","80.4","53.8","2250.0","310.0","76","265.7");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 18:00:00.0", "0","77.1","57.1","2250.0","315.0","73","205.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-24-04 21:00:00.0", "0","71.2","56.4","2250.0","315.0","73","0.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity,nutrients,co2,moisture,light) VALUES("2022-25-04 00:00:00.0", "2341.25","69.3","61.4","2250.0","315.0","73","0.0");
