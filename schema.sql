CREATE TABLE guild (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);

CREATE TABLE calling (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);

CREATE TABLE subject (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);

CREATE TABLE semester (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  academic_year INTEGER NOT NULL,
  CHECK (start_date < end_date)
);

CREATE TABLE subject_calling (
  subject_id INTEGER NOT NULL,
  calling_id INTEGER NOT NULL,
  semester_id INTEGER NOT NULL,
  PRIMARY KEY (subject_id, calling_id, semester_id),
  FOREIGN KEY (subject_id) REFERENCES subject(id),
  FOREIGN KEY (calling_id) REFERENCES calling(id),
  FOREIGN KEY (semester_id) REFERENCES semester(id)
);

CREATE TABLE character (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  guild_id INTEGER NOT NULL,
  calling_id INTEGER NOT NULL,
  FOREIGN KEY (guild_id) REFERENCES guild(id),
  FOREIGN KEY (calling_id) REFERENCES calling(id)
);