CREATE TABLE IF NOT EXISTS block_signups (
  id SERIAL PRIMARY KEY,
  ip inet NOT NULL,
  reason TEXT not null,
  created_at timestamp without time zone NOT NULL DEFAULT NOW()
);
