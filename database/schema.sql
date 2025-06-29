-- PostgreSQL schema for Rehearsal Manager
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(30),
    role VARCHAR(20)
);
CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    start_datetime TIMESTAMP,
    end_datetime TIMESTAMP,
    location VARCHAR(100),
    organizer_id INT REFERENCES users(id)
);
CREATE TABLE attendance (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    event_id INT REFERENCES events(id),
    status VARCHAR(20)
);
CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    event_id INT REFERENCES events(id),
    sent_at TIMESTAMP,
    type VARCHAR(10)
);
CREATE TABLE resources (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(30)
);
CREATE TABLE feedback (
    id SERIAL PRIMARY KEY,
    event_id INT REFERENCES events(id),
    user_id INT REFERENCES users(id),
    comments TEXT,
    rating INT
);
