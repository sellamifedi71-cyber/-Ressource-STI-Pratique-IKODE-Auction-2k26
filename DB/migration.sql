-- Run once after importing DB/fedi_auctions.sql.
-- Password hashes need at least 60 characters; 255 leaves room for future algorithms.
ALTER TABLE client MODIFY password VARCHAR(255) NOT NULL;

-- The original sample lots used fixed dates in May/June 2026 and would all be closed.
-- Reset the demonstration window when installing so the bidding flow can be tested.
UPDATE produit SET date_debut = CURDATE(), date_fin = DATE_ADD(CURDATE(), INTERVAL 30 DAY);
