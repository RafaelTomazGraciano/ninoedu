--Altere a constraint no banco para que quando o herói for deletado,
-- o campo heroi_id do aluno seja setado como NULL
ALTER TABLE aluno DROP CONSTRAINT IF EXISTS aluno_heroi_id_fkey;
ALTER TABLE aluno ADD CONSTRAINT aluno_heroi_id_fkey
    FOREIGN KEY (heroi_id) REFERENCES heroi(id) ON DELETE SET NULL;