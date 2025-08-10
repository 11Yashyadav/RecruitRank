# 🚀 RecruitRank

RecruitRank is a backend-driven candidate evaluation system that uses SQL logic to score and rank applicants based on experience, skill match, and interview feedback. Built with PostgreSQL and Node.js, it demonstrates real-world data modeling, scoring algorithms, and analytics — perfect for showcasing backend and database expertise.

---

## 📌 Why This Project Matters

Recruiters often struggle to objectively compare candidates across multiple dimensions. RecruitRank solves this by:

- 🧠 Automating candidate scoring using SQL logic
- 📊 Providing dynamic rankings based on job requirements
- 🛠️ Offering a scalable backend API for integration with hiring platforms

---

## 🛠️ Tech Stack

| Layer       | Tools Used           |
|------------|----------------------|
| Database    | PostgreSQL           |
| Backend     | Node.js + Express    |
| API Testing | Postman / Browser    |

---

## 🧱 Features

- ✅ Candidate profile management (skills, experience, education)
- ✅ Job role definitions with required skills
- ✅ Interview feedback normalization
- ✅ SQL-powered scoring engine with weighted logic
- ✅ REST API to fetch ranked candidates

---

## 📦 Setup Instructions

### 1. Clone the Repo

```bash
git clone https://github.com/11Yashyadav/RecruitRank.git
cd RecruitRank
```
### 2. Install Dependencies
```bash
npm install
```
### 3. Set Up PostgreSQL
Create a database named recruitrank and run:
```bash
psql -U your_pg_user -d recruitrank -f db/schema.sql
psql -U your_pg_user -d recruitrank -f db/seed.sql
```

Update server.js with your DB credentials:
```bash
const pool = new Pool({
  user: 'your_pg_user',
  host: 'localhost',
  database: 'recruitrank',
  password: 'your_pg_password',
  port: 5432,
});
```
### 4. Start the Server
```bash
npm start
Visit: http://localhost:3000/rankings
```

#### 📊 Sample Output
```bash
[
  {
    "name": "Carol",
    "job_title": "Data Analyst",
    "experience": 7,
    "matched_skills": 2,
    "avg_feedback": 9,
    "total_score": 28.5
  },
  {
    "name": "Alice",
    "job_title": "Backend Developer",
    "experience": 5,
    "matched_skills": 2,
    "avg_feedback": 8,
    "total_score": 26.0
  }
]
```
### 🧠 Scoring Logic
```bash
Score = (Experience * 2) + (Skill Match * 3) + (Feedback Avg * 1.5)
```
Implemented using SQL CTEs, array operations, and JOINs for performance and clarity.

### 🚀 Future Enhancements
```bash
🔐 Recruiter login and job creation UI

🤖 AI-based feedback sentiment analysis

📈 Dashboard with hiring analytics

🌐 Deployment on Render or Vercel
```
