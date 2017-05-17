CREATE TABLE categories (
	`id` INT NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL,
    `parent_id` INT NOT NULL DEFAULT 0,
    `name` VARCHAR(64) NOT NULL DEFAULT '',
    `code` VARCHAR(16) NOT NULL DEFAULT '',
    `hierarchy` TEXT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO categories(name, code, hierarchy) 
VALUES ('Food', 'FD', 'Food');
INSERT INTO categories(parent_id, code, hierarchy)
VALUES
(1, 'Snack', 'SN', 'Food - Snack'),
(1, 'Drink', 'DN', 'Food - Drink');