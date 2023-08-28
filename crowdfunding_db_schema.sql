-- Mini-Project: Crowdfunding DB

-- This SQL file includes:
-- 1. PostgreSQL schema and code to create database tables
-- 2. PostgreSQL code to review and verify imported data

-- 1. Create database tables

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(5) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);
	
CREATE TABLE subcategory (
	subcategory_id VARCHAR(9) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE campaign (
	cd_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(9) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- 2. Review and verify imported data

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign

SELECT COUNT(*) FROM contacts		-- 1000 records
SELECT COUNT(*) FROM category		-- 9 records
SELECT COUNT(*) FROM subcategory	-- 24 records
SELECT COUNT(*) FROM campaign		-- 1000 records