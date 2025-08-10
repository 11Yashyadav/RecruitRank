const express = require("express");
const { Pool } = require("pg");
const app = express();
const port = 3000;

const pool = new Pool({
  user: "your_pg_user",
  host: "localhost",
  database: "recruitrank",
  password: "your_pg_password",
  port: 5432,
});

app.get("/rankings", async (req, res) => {
  const query = require("fs").readFileSync("./db/queries.sql", "utf8");
  try {
    const result = await pool.query(query);
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Error running query");
  }
});

app.listen(port, () => {
  console.log(`RecruitRank server running at http://localhost:${port}`);
});
