INSERT INTO SubscriptionPlan VALUES (1, 'Basic', 9.99, 1, 'HD', 1);
INSERT INTO SubscriptionPlan VALUES (2, 'Standard', 14.99, 1, 'Full HD', 2);
INSERT INTO SubscriptionPlan VALUES (3, 'Premium', 19.99, 1, '4K', 4);
INSERT INTO SubscriptionPlan VALUES (4, 'Family', 24.99, 1, '4K', 6);
INSERT INTO SubscriptionPlan VALUES (5, 'Student', 7.99, 1, 'SD', 1);
INSERT INTO SubscriptionPlan VALUES (6, 'Annual Basic', 99.99, 12, 'HD', 1);
INSERT INTO SubscriptionPlan VALUES (7, 'Annual Premium', 199.99, 12, '4K', 4);
INSERT INTO SubscriptionPlan VALUES (8, 'Mobile Only', 5.99, 1, 'HD', 1);
INSERT INTO SubscriptionPlan VALUES (9, 'Business', 49.99, 1, '4K', 8);
INSERT INTO SubscriptionPlan VALUES (10, 'Trial', 0.00, 1, 'HD', 1);

INSERT INTO Users VALUES (1, 'Ivan Ivanov', 'ivan@abv.bg', '0888123456', 'pass123', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Bulgaria', 'Smart TV', 1);
INSERT INTO Users VALUES (2, 'Maria Petrova', 'maria@gmail.com', '0899123456', 'mypass', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Bulgaria', 'Mobile', 2);
INSERT INTO Users VALUES (3, 'Georgi Kolev', 'georgi@abv.bg', '0888456789', 'gkpass', TO_DATE('2025-10-25','YYYY-MM-DD'), 'Bulgaria', 'Laptop', 3);
INSERT INTO Users VALUES (4, 'Elena Dimitrova', 'elena@yahoo.com', '0889012345', 'elena321', TO_DATE('2025-10-20','YYYY-MM-DD'), 'Bulgaria', 'Tablet', 4);
INSERT INTO Users VALUES (5, 'Petar Georgiev', 'p.georgiev@mail.bg', '0899456123', 'petarpass', TO_DATE('2025-10-21','YYYY-MM-DD'), 'Bulgaria', 'Smart TV', 5);
INSERT INTO Users VALUES (6, 'Stoyan Stoyanov', 'stoyan@gmail.com', '0888888888', 'sto123', TO_DATE('2025-09-15','YYYY-MM-DD'), 'Bulgaria', 'Mobile', 6);
INSERT INTO Users VALUES (7, 'Nikol Manolova', 'nikol@abv.bg', '0899555555', 'nikolpass', TO_DATE('2025-09-12','YYYY-MM-DD'), 'Bulgaria', 'Laptop', 7);
INSERT INTO Users VALUES (8, 'Daniel Popov', 'daniel@popov.com', '0888777777', 'danpass', TO_DATE('2025-09-30','YYYY-MM-DD'), 'Bulgaria', 'Smart TV', 8);
INSERT INTO Users VALUES (9, 'Kristina Ilieva', 'k.ilieva@mail.bg', '0899111222', 'krisi1', TO_DATE('2025-09-25','YYYY-MM-DD'), 'Bulgaria', 'Mobile', 9);
INSERT INTO Users VALUES (10, 'Mihail Borisov', 'mihail@borisov.bg', '0899333444', 'misho321', TO_DATE('2025-10-05','YYYY-MM-DD'), 'Bulgaria', 'Tablet', 10);

INSERT INTO Movie VALUES (1, 'Inception', 'Mind-bending thriller', 2010, 148, 'English', 'PG-13', 'USA');
INSERT INTO Movie VALUES (2, 'Avatar', 'Sci-fi adventure', 2009, 162, 'English', 'PG-13', 'USA');
INSERT INTO Movie VALUES (3, 'Parasite', 'Korean social drama', 2019, 132, 'Korean', 'R', 'South Korea');
INSERT INTO Movie VALUES (4, 'Interstellar', 'Space and time travel', 2014, 169, 'English', 'PG-13', 'USA');
INSERT INTO Movie VALUES (5, 'The Batman', 'Gotham crime thriller', 2022, 175, 'English', 'PG-13', 'USA');
INSERT INTO Movie VALUES (6, 'Joker', 'Psychological drama', 2019, 122, 'English', 'R', 'USA');
INSERT INTO Movie VALUES (7, 'Tenet', 'Time inversion thriller', 2020, 150, 'English', 'PG-13', 'UK');
INSERT INTO Movie VALUES (8, 'Dune', 'Sci-fi epic', 2021, 155, 'English', 'PG-13', 'USA');
INSERT INTO Movie VALUES (9, 'The Matrix', 'Virtual reality action', 1999, 136, 'English', 'R', 'USA');
INSERT INTO Movie VALUES (10, 'Oppenheimer', 'Historical drama', 2023, 180, 'English', 'R', 'USA');

INSERT INTO Genre VALUES (1, 'Action', 95, 'Fast-paced movies', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (2, 'Drama', 90, 'Emotional storytelling', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (3, 'Sci-Fi', 88, 'Futuristic and space themes', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (4, 'Thriller', 85, 'Suspense and excitement', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (5, 'Horror', 80, 'Scary movies', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (6, 'Comedy', 82, 'Funny and entertaining', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (7, 'Romance', 75, 'Love stories', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (8, 'Documentary', 70, 'Educational films', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (9, 'Adventure', 89, 'Exciting journeys', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');
INSERT INTO Genre VALUES (10, 'Fantasy', 87, 'Magical worlds', TO_DATE('2025-10-27','YYYY-MM-DD'), 'Y');

INSERT INTO Rating VALUES (1, 1, 1, 5, 'Amazing movie!', TO_DATE('2025-10-27','YYYY-MM-DD'));
INSERT INTO Rating VALUES (2, 2, 2, 4, 'Great effects!', TO_DATE('2025-10-27','YYYY-MM-DD'));
INSERT INTO Rating VALUES (3, 3, 3, 5, 'Incredible story', TO_DATE('2025-10-26','YYYY-MM-DD'));
INSERT INTO Rating VALUES (4, 4, 4, 4, 'Loved the visuals', TO_DATE('2025-10-25','YYYY-MM-DD'));
INSERT INTO Rating VALUES (5, 5, 5, 5, 'Dark and deep', TO_DATE('2025-10-25','YYYY-MM-DD'));
INSERT INTO Rating VALUES (6, 6, 6, 5, 'Joaquin Phoenix is brilliant', TO_DATE('2025-10-24','YYYY-MM-DD'));
INSERT INTO Rating VALUES (7, 7, 7, 4, 'Mind-blowing concept', TO_DATE('2025-10-23','YYYY-MM-DD'));
INSERT INTO Rating VALUES (8, 8, 8, 5, 'Stunning visuals and sound', TO_DATE('2025-10-22','YYYY-MM-DD'));
INSERT INTO Rating VALUES (9, 9, 9, 5, 'A classic!', TO_DATE('2025-10-21','YYYY-MM-DD'));
INSERT INTO Rating VALUES (10, 10, 10, 4, 'Powerful and emotional', TO_DATE('2025-10-20','YYYY-MM-DD'));

INSERT INTO WatchHistory VALUES (1, 1, 1, TO_DATE('2025-10-27','YYYY-MM-DD'), 148, 'Y');
INSERT INTO WatchHistory VALUES (2, 2, 2, TO_DATE('2025-10-27','YYYY-MM-DD'), 120, 'N');
INSERT INTO WatchHistory VALUES (3, 3, 3, TO_DATE('2025-10-25','YYYY-MM-DD'), 132, 'Y');
INSERT INTO WatchHistory VALUES (4, 4, 4, TO_DATE('2025-10-24','YYYY-MM-DD'), 169, 'Y');
INSERT INTO WatchHistory VALUES (5, 5, 5, TO_DATE('2025-10-23','YYYY-MM-DD'), 175, 'N');
INSERT INTO WatchHistory VALUES (6, 6, 6, TO_DATE('2025-10-22','YYYY-MM-DD'), 122, 'Y');
INSERT INTO WatchHistory VALUES (7, 7, 7, TO_DATE('2025-10-21','YYYY-MM-DD'), 150, 'Y');
INSERT INTO WatchHistory VALUES (8, 8, 8, TO_DATE('2025-10-20','YYYY-MM-DD'), 155, 'Y');
INSERT INTO WatchHistory VALUES (9, 9, 9, TO_DATE('2025-10-19','YYYY-MM-DD'), 136, 'Y');
INSERT INTO WatchHistory VALUES (10, 10, 10, TO_DATE('2025-10-18','YYYY-MM-DD'), 180, 'Y');


INSERT INTO MovieGenre VALUES (1, 1);
INSERT INTO MovieGenre VALUES (1, 3);
INSERT INTO MovieGenre VALUES (2, 3);
INSERT INTO MovieGenre VALUES (3, 2);
INSERT INTO MovieGenre VALUES (4, 3);
INSERT INTO MovieGenre VALUES (5, 4);
INSERT INTO MovieGenre VALUES (6, 2);
INSERT INTO MovieGenre VALUES (7, 3);
INSERT INTO MovieGenre VALUES (8, 9);
INSERT INTO MovieGenre VALUES (9, 1);
INSERT INTO MovieGenre VALUES (10, 2);