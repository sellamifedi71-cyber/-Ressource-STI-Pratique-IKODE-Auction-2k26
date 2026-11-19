-- Run once after importing DB/ikode_auction.sql.
-- Password hashes need at least 60 characters; 255 leaves room for future algorithms.
ALTER TABLE client MODIFY password VARCHAR(255) NOT NULL;
