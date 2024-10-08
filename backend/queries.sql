CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100)
)

CREATE TABLE blogs(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    status VARCHAR(100) DEFAULT 'draft',
    content TEXT NOT NULL,
    authorID VARCHAR(100)[] NOT NULL DEFAULT ARRAY[]::VARCHAR[],
    categories VARCHAR(100)[] DEFAULT ARRAY[]::VARCHAR[],
    timeCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
