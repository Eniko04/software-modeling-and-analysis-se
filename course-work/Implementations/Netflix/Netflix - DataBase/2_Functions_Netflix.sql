CREATE OR REPLACE FUNCTION AVG_MOVIE_RATING(p_movie_id NUMBER)
RETURN VARCHAR2
IS
    v_title       VARCHAR2(200);
    v_avg_rating  NUMBER(3,2);
BEGIN
    SELECT m.title, NVL(AVG(r.stars), 0)
    INTO v_title, v_avg_rating
    FROM Movie m
    LEFT JOIN Rating r ON m.movie_id = r.movie_id
    WHERE m.movie_id = p_movie_id
    GROUP BY m.title;

    RETURN v_title || ' (ID = ' || p_movie_id || '), средна оценка: ' || v_avg_rating;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Няма данни за филм с ID = ' || p_movie_id;
END;
/

SELECT AVG_MOVIE_RATING(1) AS RESULT FROM DUAL;


CREATE OR REPLACE FUNCTION USER_WATCH_COUNT(p_user_id NUMBER)
RETURN VARCHAR2
IS
    v_name        VARCHAR2(100);
    v_total       NUMBER;
    v_completed   NUMBER;
BEGIN
    SELECT u.name,
           COUNT(w.history_id),
           SUM(CASE WHEN w.completed = 'Y' THEN 1 ELSE 0 END)
    INTO v_name, v_total, v_completed
    FROM Users u
    LEFT JOIN WatchHistory w ON u.user_id = w.user_id
    WHERE u.user_id = p_user_id
    GROUP BY u.name;

    RETURN v_name || ' е гледал ' || v_total || ' филма, от които ' ||
           v_completed || ' са изгледани докрай.';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Няма намерен потребител с ID = ' || p_user_id;
END;
/

SELECT USER_WATCH_COUNT(3) AS RESULT FROM DUAL;


CREATE OR REPLACE FUNCTION PLAN_TOTAL_USERS(p_plan_id NUMBER)
RETURN VARCHAR2
IS
    v_plan_name  VARCHAR2(100);
    v_count      NUMBER;
BEGIN
    SELECT s.name, COUNT(u.user_id)
    INTO v_plan_name, v_count
    FROM SubscriptionPlan s
    LEFT JOIN Users u ON s.plan_id = u.plan_id
    WHERE s.plan_id = p_plan_id
    GROUP BY s.name;

    RETURN 'План "' || v_plan_name || '" (ID = ' || p_plan_id ||
           ') има ' || v_count || ' потребителя.';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Няма намерен план с ID = ' || p_plan_id;
END;
/

SELECT PLAN_TOTAL_USERS(2) AS RESULT FROM DUAL;


