CREATE USER IF NOT EXISTS 'catalogue_user' IDENTIFIED BY 'default_password';

GRANT ALL ON socksdb.* TO 'catalogue_user';

CREATE TABLE IF NOT EXISTS sock (
	sock_id varchar(40) NOT NULL, 
	name varchar(20), 
	description varchar(500), 
	price float, 
	count int, 
	image_url_1 varchar(40), 
	image_url_2 varchar(40), 
	PRIMARY KEY(sock_id)
);

CREATE TABLE IF NOT EXISTS tag (
	tag_id MEDIUMINT NOT NULL AUTO_INCREMENT, 
	name varchar(20), 
	PRIMARY KEY(tag_id)
);

CREATE TABLE IF NOT EXISTS sock_tag (
	sock_id varchar(40), 
	tag_id MEDIUMINT NOT NULL, 
	FOREIGN KEY (sock_id) 
		REFERENCES sock(sock_id), 
	FOREIGN KEY(tag_id)
		REFERENCES tag(tag_id)
);

INSERT INTO sock VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "Boots Shoe", "Elevate your style with our collection of boots - crafted with premium materials and designed for both fashion and function. Step confidently into any season with our versatile range, blending timeless appeal with modern comfort.", 200, 33, "/catalogue/images/boots.jpg", "/catalogue/images/boots.jpg");
INSERT INTO sock VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "Brogues", "Step into sophistication with our exquisite range of brogues. Meticulously crafted with precision and style, each pair embodies timeless elegance and modern flair. Elevate your wardrobe with the classic charm and unmatched comfort of our brogues, perfect for every occasion.", 150, 30, "/catalogue/images/brogues.jpg", "/catalogue/images/brogues.jpg");
INSERT INTO sock VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "Casuals", " Effortlessly stylish and endlessly versatile, our collection of casual shoes is designed to complement your everyday look with comfort and flair. From laid-back sneakers to relaxed loafers, each pair embodies the perfect blend of fashion-forward design and all-day comfort, ensuring you step out in style wherever you go.",  80, 50, "/catalogue/images/casuals.jpg", "/catalogue/images/casuals.jpg");
INSERT INTO sock VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "Chukka Boots", "Timeless yet contemporary, our Chukka Boots offer a perfect balance of rugged sophistication and everyday comfort. Crafted with premium materials and meticulous attention to detail, these versatile boots effortlessly elevate any outfit, from casual to semi-formal occasions.",  120, 30, "/catalogue/images/chukkaboots.jpg", "/catalogue/images/chukkaboots.jpg");
INSERT INTO sock VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "Casuals Special", "Shoe fit for a Messiah. You too can experience walking in water with these special edition beauties.",  99.99, 1, "/catalogue/images/shoe2.png", "/catalogue/images/shoe2.png");
INSERT INTO sock VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "Espandrilles", "Embrace laid-back elegance with our collection of espadrilles. Featuring classic woven jute soles and lightweight canvas uppers, these shoes exude casual charm with a touch of Mediterranean flair. Perfect for leisurely strolls or beachside getaways, our espadrilles blend comfort and style effortlessly.",  50, 60, "/catalogue/images/espandrilles.jpg", "/catalogue/images/espandrilles.jpg");
INSERT INTO sock VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "Loafers", "Effortlessly chic and endlessly versatile, our loafers are the epitome of sophisticated comfort. Crafted from premium leather and designed with timeless elegance, these slip-on shoes seamlessly transition from work to weekend, offering unparalleled style and ease.",  100, 100, "/catalogue/images/loafers.jpg", "/catalogue/images/loafers.jpg");
INSERT INTO sock VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "Monk", "Make a statement with our elegant monk shoes, a fusion of classic charm and contemporary flair. Featuring distinctive buckle closures and expert craftsmanship, these shoes add a touch of sophistication to any ensemble, whether it's a formal affair or a casual outing.",  150, 120, "/catalogue/images/monk.jpg", "/catalogue/images/monk.jpg");
INSERT INTO sock VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "Oxfoards", "Elevate your formal attire with our timeless Oxford shoes. Meticulously crafted from premium leather and featuring exquisite detailing, these classic lace-up shoes exude sophistication and refinement. Whether you're attending a boardroom meeting or a special event, our Oxfords ensure you step out in style",  120, 100, "/catalogue/images/oxfoards.jpg", "/catalogue/images/oxfoards.jpg");
INSERT INTO sock VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "Sneakers", "Experience the perfect blend of style and comfort with our versatile collection of sneakers. Crafted with innovative materials and ergonomic design, these shoes offer unbeatable support for all-day wear. From classic canvas to modern knit styles, our sneakers are your go-to choice for effortless street style.",  80, 175, "/catalogue/images/sneakers.jpg", "/catalogue/images/sneakers.jpg");

INSERT INTO tag (name) VALUES ("Neutral");
INSERT INTO tag (name) VALUES ("Colorful");
INSERT INTO tag (name) VALUES ("Strandard");
INSERT INTO tag (name) VALUES ("Widefit");
INSERT INTO tag (name) VALUES ("Narrowfit");
INSERT INTO tag (name) VALUES ("Athletic");
INSERT INTO tag (name) VALUES ("Formal");
INSERT INTO tag (name) VALUES ("Waterproof");
INSERT INTO tag (name) VALUES ("Breathable");
INSERT INTO tag (name) VALUES ("Lightweight");
INSERT INTO tag (name) VALUES ("Work");

INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "2");
INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "9");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "4");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "5");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "4");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "6");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "7");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "3");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "8");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "9");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "10");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "7");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "2");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "3");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "3");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "11");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "4");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "11");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "1");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "4");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "1");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "11");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "3");




