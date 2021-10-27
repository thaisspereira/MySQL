CREATE TABLE `Tema` (
	`id` varchar(255) NOT NULL AUTO_INCREMENT,
	`descrição` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagens` (
	`id` varchar(255) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(1000) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`tema_id` varchar(255) NOT NULL,
	`usuario_id` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuarios` (
	`id` varchar(255) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL AUTO_INCREMENT,
	`usuario` varchar(255) NOT NULL AUTO_INCREMENT,
	`senha` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Tema` ADD CONSTRAINT `Tema_fk0` FOREIGN KEY (`id`) REFERENCES `Postagens`(`tema_id`);

ALTER TABLE `Usuarios` ADD CONSTRAINT `Usuarios_fk0` FOREIGN KEY (`id`) REFERENCES `Postagens`(`usuario_id`);




