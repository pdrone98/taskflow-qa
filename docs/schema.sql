-- Tabela de usuários
CREATE TABLE IF NOT EXISTS users (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  name        TEXT    NOT NULL,
  email       TEXT    NOT NULL UNIQUE,
  password    TEXT    NOT NULL,
  created_at  DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de tarefas
CREATE TABLE IF NOT EXISTS tasks (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id     INTEGER NOT NULL,
  title       TEXT    NOT NULL,
  description TEXT,
  status      TEXT    DEFAULT 'pending'
              CHECK(status IN ('pending', 'in_progress', 'completed')),
  created_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);