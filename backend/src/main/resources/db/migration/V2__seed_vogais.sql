-- Insere 'A' apenas se não existir
INSERT INTO vogal (vogal) 
SELECT 'A' WHERE NOT EXISTS (SELECT 1 FROM vogal WHERE vogal = 'A');

-- Insere 'E' apenas se não existir
INSERT INTO vogal (vogal) 
SELECT 'E' WHERE NOT EXISTS (SELECT 1 FROM vogal WHERE vogal = 'E');

-- Insere 'I' apenas se não existir
INSERT INTO vogal (vogal) 
SELECT 'I' WHERE NOT EXISTS (SELECT 1 FROM vogal WHERE vogal = 'I');

-- Insere 'O' apenas se não existir
INSERT INTO vogal (vogal) 
SELECT 'O' WHERE NOT EXISTS (SELECT 1 FROM vogal WHERE vogal = 'O');

-- Insere 'U' apenas se não existir
INSERT INTO vogal (vogal) 
SELECT 'U' WHERE NOT EXISTS (SELECT 1 FROM vogal WHERE vogal = 'U');