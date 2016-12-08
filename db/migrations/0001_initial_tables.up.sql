CREATE TABLE visits(
  `id` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `page_id` INTEGER UNSIGNED NOT NULL,
  `ip_address` VARCHAR(100) NOT NULL,
  `referrer_keyword` TEXT NULL,
  `referrer_url` TEXT NULL,
  `device_os` VARCHAR(100) NULL,
  `browser_name` VARCHAR(31) NULL,
  `browser_version` VARCHAR(31) NULL,
  `browser_language` VARCHAR(31) NULL,
  `screen_resolution` VARCHAR(9) NULL,
  `country` CHAR(3) NULL,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE sites(
  `id` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `url` VARCHAR(255) NOT NULL
);

CREATE TABLE pages(
  `id` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `site_id` INTEGER UNSIGNED NOT NULL,
  `path` VARCHAR(255) NOT NULL,
  `title` VARCHAR(255) NULL
);

CREATE TABLE users (
  `id` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL
);
