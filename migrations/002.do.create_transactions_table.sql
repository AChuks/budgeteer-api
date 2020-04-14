CREATE TABLE transactions (
  id CHAR(36) PRIMARY KEY,
  date TIMESTAMP DEFAULT now() NOT NULL,
  cost DECIMAL(12,2) NOT NULL,
  payee VARCHAR(64),
  memo VARCHAR(256),
  account CHAR(36) REFERENCES users(id) ON DELETE CASCADE NOT NULL
);