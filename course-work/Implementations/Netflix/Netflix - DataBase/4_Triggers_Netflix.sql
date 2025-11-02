CREATE OR REPLACE TRIGGER TRG_RATING_ALERT
AFTER INSERT ON Rating
FOR EACH ROW
DECLARE
    v_user_name VARCHAR2(100);
    v_movie_title VARCHAR2(200);
BEGIN
    SELECT name INTO v_user_name FROM Users WHERE user_id = :NEW.user_id;
    SELECT title INTO v_movie_title FROM Movie WHERE movie_id = :NEW.movie_id;

    DBMS_OUTPUT.PUT_LINE('➡️ Потребител "' || v_user_name || 
                         '" оцени филма "' || v_movie_title || 
                         '" с ' || :NEW.stars || ' звезди.');
END;
/

SET SERVEROUTPUT ON;
INSERT INTO Rating VALUES (11, 2, 1, 4, 'Very good!', SYSDATE);


CREATE OR REPLACE TRIGGER TRG_WATCH_HISTORY_ALERT
AFTER INSERT ON WatchHistory
FOR EACH ROW
DECLARE
    v_user_name VARCHAR2(100);
    v_movie_title VARCHAR2(200);
BEGIN
    SELECT name INTO v_user_name FROM Users WHERE user_id = :NEW.user_id;
    SELECT title INTO v_movie_title FROM Movie WHERE movie_id = :NEW.movie_id;

    IF :NEW.completed = 'Y' THEN
        DBMS_OUTPUT.PUT_LINE('🎞️ ' || v_user_name || ' изгледа докрай "' || v_movie_title || '".');
    ELSE
        DBMS_OUTPUT.PUT_LINE('⏸️ ' || v_user_name || ' започна да гледа "' || v_movie_title || '", но не го завърши.');
    END IF;
END;
/

SET SERVEROUTPUT ON;
INSERT INTO WatchHistory VALUES (11, 3, 2, SYSDATE, 80, 'N');

CREATE OR REPLACE TRIGGER TRG_USER_DELETE_ALERT
AFTER DELETE ON Users
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('⚠️ Изтрит е потребител: ' || :OLD.name || 
                         ' (' || :OLD.email || '), държава: ' || :OLD.country);
END;
/

SET SERVEROUTPUT ON;
DELETE FROM Users WHERE user_id = 10;


