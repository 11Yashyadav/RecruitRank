CREATE TABLE candidates (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  experience INTEGER, -- in years
  education_level TEXT, -- e.g., "Bachelor", "Master", "PhD"
  skills TEXT[] -- array of skill tags
);

CREATE TABLE jobs (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  required_skills TEXT[],
  min_experience INTEGER
);

CREATE TABLE feedback (
  id SERIAL PRIMARY KEY,
  candidate_id INTEGER REFERENCES candidates(id),
  interviewer TEXT,
  score INTEGER CHECK (score BETWEEN 1 AND 10),
  comments TEXT
);
