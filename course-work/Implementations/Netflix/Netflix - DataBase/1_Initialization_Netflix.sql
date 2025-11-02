CREATE TABLE SubscriptionPlan (
    plan_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    price NUMBER(10,2),
    duration_months NUMBER,
    resolution VARCHAR2(50),
    screens NUMBER
);

CREATE TABLE Users (
    user_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(20),
    password VARCHAR2(100),
    signup_date DATE,
    country VARCHAR2(50),
    device_type VARCHAR2(50),
    plan_id NUMBER,
    FOREIGN KEY (plan_id) REFERENCES SubscriptionPlan(plan_id)
);

CREATE TABLE Movie (
    movie_id NUMBER PRIMARY KEY,
    title VARCHAR2(200),
    description VARCHAR2(500),
    release_year NUMBER,
    duration_min NUMBER,
    language VARCHAR2(50),
    rating_age VARCHAR2(10),
    production_country VARCHAR2(50)
);

CREATE TABLE Genre (
    genre_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    popularity NUMBER,
    description VARCHAR2(500),
    created_at DATE,
    is_active CHAR(1)
);

CREATE TABLE Rating (
    rating_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    movie_id NUMBER,
    stars NUMBER(1),
    comment_text VARCHAR2(500),
    rated_at DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

CREATE TABLE WatchHistory (
    history_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    movie_id NUMBER,
    watch_date DATE,
    watch_time_min NUMBER,
    completed CHAR(1),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

CREATE TABLE MovieGenre (
    movie_id NUMBER,
    genre_id NUMBER,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
