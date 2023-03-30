INSERT INTO users(
	"name", email, "password", age
)VALUES(
	'moises',
	'moises@gmail.com',
	'123456',
	'25'
),
(
	'maricela',
	'marice@gmail.com',
	'12345645',
	'29'
);

SELECT * FROM users;

ALTER TABLE courses RENAME COLUMN tracher TO teacher;

INSERT INTO categories(
	"name"
)VALUES(
	'Desarrollo WEB'
),
(  
	'Desarrollo movil' 
);

INSERT INTO courses(
	title, description, "level", teacher, category_id
) VALUES (
	'fundamentos de PHP',
	'aprende los fundamentos de php con proyectos',
	'principiante',
	'Pedro Farias',
	1
),
(
	'NodeJs',
	'aprende nodejs y crea proyectos que te lleven al próximo nivel',
	'medio',
	'Sahid Ayala Kick',
	1
);

SELECT * FROM courses;

SELECT * FROM courses JOIN categories ON courses.category_id = categories.id;

INSERT INTO users_courses(
	user_id, course_id
)VALUES(
	1,
	2
),
(
	1,
	1
);


SELECT * FROM users_courses JOIN users ON users_courses.user_id = users.id JOIN courses ON users_courses.course_id = courses.id; 

INSERT INTO course_video(
	title, url, course_id
)VALUES(
	'primeros pasos en PHP',
   'https://udemy.desarrolleWeb/PHP-fundamentos',
	1
),
(
	'Hola mundo con nodejs',
	'https://udemy.desarrolleWeb/nodejs-holamundo',
	2
);


SELECT * FROM course_video;