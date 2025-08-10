-- Score = (Experience Weight + Skill Match Weight + Feedback Score)

WITH skill_match AS (
  SELECT 
    c.id AS candidate_id,
    j.id AS job_id,
    cardinality(ARRAY(SELECT UNNEST(c.skills) INTERSECT SELECT UNNEST(j.required_skills))) AS matched_skills
  FROM candidates c
  JOIN jobs j ON TRUE
),
feedback_avg AS (
  SELECT candidate_id, AVG(score) AS avg_feedback
  FROM feedback
  GROUP BY candidate_id
)

SELECT 
  c.name,
  j.title AS job_title,
  c.experience,
  sm.matched_skills,
  fa.avg_feedback,
  -- Weighted score formula
  (c.experience * 2 + sm.matched_skills * 3 + fa.avg_feedback * 1.5) AS total_score
FROM candidates c
JOIN skill_match sm ON c.id = sm.candidate_id
JOIN jobs j ON sm.job_id = j.id
LEFT JOIN feedback_avg fa ON c.id = fa.candidate_id
ORDER BY total_score DESC;
