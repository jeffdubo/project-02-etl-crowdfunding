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
	category_id VARCHR(5) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);
	
CREATE TABLE subcategory (
	subcategory_id VARCHAR(9) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

-- Need to review/determine which fields should have "NOT NULL"
CREATE TABLE campaign (
	cd_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(50),
	goal DOUBLE NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT, 
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	lauched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	staff_pick BOOLEAN,
	spotlight BOOLEAN,
	category_id VARCHR(5),
	subcategory_id VARCHAR(9),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES contacts(subcategory_id)
);

-- 2. Review and verify imported data

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign

SELECT COUNT(*) FROM contacts		-- 1000 records
SELECT COUNT(*) FROM category
SELECT COUNT(*) FROM subcategory
SELECT COUNT(*) FROM campaign
