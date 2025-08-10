INSERT INTO candidates (name, experience, education_level, skills)
VALUES 
  ('Alice', 5, 'Master', ARRAY['JavaScript', 'SQL', 'React']),
  ('Bob', 3, 'Bachelor', ARRAY['Java', 'Spring', 'SQL']),
  ('Carol', 7, 'PhD', ARRAY['Python', 'Machine Learning', 'SQL']);

INSERT INTO jobs (title, required_skills, min_experience)
VALUES 
  ('Backend Developer', ARRAY['Java', 'SQL'], 4),
  ('Data Analyst', ARRAY['Python', 'SQL'], 2);

INSERT INTO feedback (candidate_id, interviewer, score, comments)
VALUES 
  (1, 'John', 8, 'Strong frontend skills'),
  (2, 'Jane', 7, 'Good backend experience'),
  (3, 'Mike', 9, 'Excellent data skills');
