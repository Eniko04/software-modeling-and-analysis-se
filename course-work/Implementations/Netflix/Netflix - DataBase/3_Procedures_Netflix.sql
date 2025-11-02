CREATE OR REPLACE PROCEDURE TOP_RATED_MOVIES
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- ТОП ФИЛМИ ПО СРЕДНА ОЦЕНКА ---');
    FOR rec IN (
        SELECT m.title,
               ROUND(AVG(r.stars), 2) AS avg_rating,
               COUNT(r.rating_id) AS rating_count
        FROM Movie m
        JOIN Rating r ON m.movie_id = r.movie_id
        GROUP BY m.title
        ORDER BY avg_rating DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            rec.title || ' | Средна оценка: ' || rec.avg_rating || 
            ' | Брой оценки: ' || rec.rating_count
        );
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
EXEC TOP_RATED_MOVIES;


CREATE OR REPLACE PROCEDURE USERS_BY_PLAN(p_plan_id NUMBER)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- ПОТРЕБИТЕЛИ С АБОНАМЕНТЕН ПЛАН ---');
    FOR rec IN (
        SELECT u.name, u.email, s.name AS plan_name
        FROM Users u
        JOIN SubscriptionPlan s ON u.plan_id = s.plan_id
        WHERE s.plan_id = p_plan_id
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(rec.name || ' | ' || rec.email || 
                             ' | План: ' || rec.plan_name);
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
EXEC USERS_BY_PLAN(1);


CREATE OR REPLACE PROCEDURE MOVIE_RATINGS_DETAILS(p_movie_id NUMBER)
IS
    v_title VARCHAR2(200);
BEGIN
    SELECT title INTO v_title
    FROM Movie
    WHERE movie_id = p_movie_id;

    DBMS_OUTPUT.PUT_LINE('--- ОЦЕНКИ ЗА ФИЛМ: ' || v_title || ' ---');

    FOR rec IN (
        SELECT u.name, r.stars, r.comment_text, TO_CHAR(r.rated_at, 'YYYY-MM-DD') AS rated_date
        FROM Rating r
        JOIN Users u ON r.user_id = u.user_id
        WHERE r.movie_id = p_movie_id
        ORDER BY r.rated_at DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            rec.name || ' | Оценка: ' || rec.stars || 
            ' | "' || rec.comment_text || '" | ' || rec.rated_date
        );
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Няма данни за филм с ID = ' || p_movie_id);
END;
/

SET SERVEROUTPUT ON;
EXEC MOVIE_RATINGS_DETAILS(1);

