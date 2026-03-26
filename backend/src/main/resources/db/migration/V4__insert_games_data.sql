-- Reseta a sequence da tabela silaba para começar em 1
ALTER SEQUENCE silaba_id_seq RESTART WITH 1;

-- Reseta a sequence da tabela imagem para começar em 1  
ALTER SEQUENCE imagem_id_seq RESTART WITH 1;

-- Reseta a sequence da tabela cena para começar em 1
ALTER SEQUENCE cena_id_seq RESTART WITH 1;

-- Reseta a sequence da tabela fragmento para começar em 1

ALTER SEQUENCE fragmento_id_seq RESTART WITH 1;

-- Reseta a sequence da tabela palavra para começar em 1
ALTER SEQUENCE palavra_id_seq RESTART WITH 1;

-- Reseta a sequence da tabela palavra_silaba para começar em 1
ALTER SEQUENCE palavra_silaba_id_seq RESTART WITH 1;

-- ============================================================
-- Sílabas com Vogal A (vogal_id = 1)
-- ============================================================
INSERT INTO silaba (vogal_id, silaba, palavra, complemento, som, deletado) VALUES
(1, 'A',     'AVIÃO',    '_VIÃO',      'http://localhost:3100/assets/Vogal_A/Audios/a.ogg',       false),
(1, 'BA',    'BANANA',   '_ _NANA',     'http://localhost:3100/assets/Vogal_A/Audios/ba.ogg',      false),
(1, 'CA',    'CACHORRO', '_ _CHORRO',  'http://localhost:3100/assets/Vogal_A/Audios/ca.ogg',      false),
(1, 'DA',    'DADO',     '_ _DO',      'http://localhost:3100/assets/Vogal_A/Audios/da.ogg',      false),
(1, 'FA',    'FACA',     '_ _CA',      'http://localhost:3100/assets/Vogal_A/Audios/fa.ogg',      false),
(1, 'GA',    'GATO',     '_ _TO',      'http://localhost:3100/assets/Vogal_A/Audios/ga.ogg',      false),
(1, 'JA',    'JACARÉ',   '_ _CARÉ',   'http://localhost:3100/assets/Vogal_A/Audios/ja.ogg',      false),
(1, 'LA',    'LÁPIS',    '_ _PIS',     'http://localhost:3100/assets/Vogal_A/Audios/la.ogg',      false),
(1, 'MA',    'MACACO',   '_ _CACO',    'http://localhost:3100/assets/Vogal_A/Audios/ma.ogg',      false),
(1, 'NA',    'NAVIO',    '_ _VIO',     'http://localhost:3100/assets/Vogal_A/Audios/na.ogg',      false),
(1, 'PA',    'PATO',     '_ _TO',      'http://localhost:3100/assets/Vogal_A/Audios/pa.ogg',      false),
(1, 'QUA',   'QUATI',    '_ _ _TI',    'http://localhost:3100/assets/Vogal_A/Audios/qua.ogg',     false),
(1, 'RA',    'RATO',     '_ _TO',      'http://localhost:3100/assets/Vogal_A/Audios/ra.ogg',      false),
(1, 'SA',    'SAPO',     '_ _PO',      'http://localhost:3100/assets/Vogal_A/Audios/sa.ogg',      false),
(1, 'TA',    'TATU',     '_ _TU',      'http://localhost:3100/assets/Vogal_A/Audios/ta.ogg',      false),
(1, 'VA',    'VACA',     '_ _CA',      'http://localhost:3100/assets/Vogal_A/Audios/va.ogg',      false),
(1, 'XA',    'XADREZ',   '_ _DREZ',    'http://localhost:3100/assets/Vogal_A/Audios/xa.ogg',      false),
(1, 'ZA',    'ZABUMBA',  '_ _BUMBA',   'http://localhost:3100/assets/Vogal_A/Audios/za.ogg',      false);

-- ============================================================
-- Sílabas com Vogal O (vogal_id = 4)
-- ============================================================
INSERT INTO silaba (vogal_id, silaba, palavra, complemento, som, deletado) VALUES
(4, 'BO',  'BOLO',      '_ _LO',      'http://localhost:3100/assets/Vogal_O/Audios/bo.ogg',      false),
(4, 'CO',  'CORAÇÃO',   '_ _RAÇÃO',   'http://localhost:3100/assets/Vogal_O/Audios/co.ogg',      false),
(4, 'DO',  'DOCE',      '_ _CE',      'http://localhost:3100/assets/Vogal_O/Audios/do.ogg',      false),
(4, 'FO',  'FOLHA',     '_ _LHA',     'http://localhost:3100/assets/Vogal_O/Audios/fo.ogg',      false),
(4, 'GO',  'GOIABA',    '_ _IABA',    'http://localhost:3100/assets/Vogal_O/Audios/go.ogg',      false),
(4, 'JO',  'JOANINHA',  '_ _ANINHA',  'http://localhost:3100/assets/Vogal_O/Audios/jo.ogg',      false),
(4, 'LO',  'LOBO',      '_ _BO',      'http://localhost:3100/assets/Vogal_O/Audios/lo.ogg',      false),
(4, 'MO',  'MORANGO',   '_ _RANGO',   'http://localhost:3100/assets/Vogal_O/Audios/mo.ogg',      false),
(4, 'NO',  'NOIVA',     '_ _IVA',     'http://localhost:3100/assets/Vogal_O/Audios/no.ogg',      false),
(4, 'O',   'ÔNIBUS',    '_ NIBUS',    'http://localhost:3100/assets/Vogal_O/Audios/o.ogg',       false),
(4, 'PO',  'POLICIAL',  '_ _LICIAL',  'http://localhost:3100/assets/Vogal_O/Audios/po.ogg',      false),
(4, 'QUO', 'QUORUM',    '_ _ _RUM',   'http://localhost:3100/assets/Vogal_O/Audios/quo.ogg',     false),
(4, 'RO',  'RODO',      '_ _DO',      'http://localhost:3100/assets/Vogal_O/Audios/ro.ogg',      false),
(4, 'SO',  'SOFÁ',      '_ _FÁ',      'http://localhost:3100/assets/Vogal_O/Audios/so.ogg',      false),
(4, 'TO',  'TOMATE',    '_ _MATE',    'http://localhost:3100/assets/Vogal_O/Audios/to.ogg',      false),
(4, 'VO',  'VOVÔ',      '_ _VÔ',      'http://localhost:3100/assets/Vogal_O/Audios/vo.ogg',      false),
(4, 'XO',  'XORORÓ',    '_ _RÓ',      'http://localhost:3100/assets/Vogal_O/Audios/xo.ogg',      false),
(4, 'ZO',  'ZOOLÓGICO', '_ _LÓGICO',  'http://localhost:3100/assets/Vogal_O/Audios/zo.ogg',      false);


-- ============================================================
-- Imagens das Sílabas com A
-- colorir = 1 (NAO_COLORIR), deletado = false
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, colorir, formato, deletado) VALUES
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/A_Aviao_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/A_Aviao_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/A_Aviao_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/A_Aviao_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ba_Banana_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ba_Banana_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ba_Banana_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ba_Banana_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ca_Cachorro_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ca_Cachorro_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ca_Cachorro_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ca_Cachorro_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Da_Dado_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Da_Dado_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Da_Dado_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Da_Dado_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Fa_Faca_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Fa_Faca_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Fa_Faca_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Fa_Faca_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ga_Gato_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ga_Gato_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ga_Gato_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ga_Gato_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ja_Jacare_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ja_Jacare_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ja_Jacare_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ja_Jacare_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/La_Lapis_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/La_Lapis_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/La_Lapis_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/La_Lapis_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ma_Macaco_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ma_Macaco_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ma_Macaco_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ma_Macaco_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Na_Navio_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Na_Navio_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Na_Navio_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Na_Navio_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Pa_Pato_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Pa_Pato_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Pa_Pato_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Pa_Pato_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Qua_Quati_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Qua_Quati_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Qua_Quati_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ra_Rato_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ra_Rato_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ra_Rato_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ra_Rato_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Sa_Sapo_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Sa_Sapo_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Sa_Sapo_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Sa_Sapo_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ta_Tatu_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ta_Tatu_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ta_Tatu_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Ta_Tatu_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Va_Vaca_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Va_Vaca_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Va_Vaca_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Va_Vaca_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Xa_Xadrez_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Xa_Xadrez_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Xa_Xadrez_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Xa_Xadrez_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Za_Zabumba_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Za_Zabumba_Imagem_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/Imagens/Za_Zabumba_Imagem_2.png', 1, 2, false);

-- ============================================================
-- Imagens das Sílabas com O
-- colorir = 1 (NAO_COLORIR), deletado = false
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, colorir, formato, deletado) VALUES
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Bo_Bolo_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Bo_Bolo_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Bo_Bolo_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Bo_Bolo_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Co_Coracao_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Co_Coracao_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Do_Doce_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Do_Doce_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Do_Doce_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Do_Doce_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Fo_Folha_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Fo_Folha_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Fo_Folha_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Fo_Folha_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Go_Goiaba_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Go_Goiaba_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Go_Goiaba_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Go_Goiaba_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Jo_Joaninha_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Jo_Joaninha_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Jo_Joaninha_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Jo_Joaninha_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Lo_Lobo_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Lo_Lobo_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Lo_Lobo_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Lo_Lobo_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Mo_Morango_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Mo_Morango_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Mo_Morango_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Mo_Morango_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/No_Noiva_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/No_Noiva_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/O_Onibus_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/O_Onibus_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/O_Onibus_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/O_Onibus_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Po_Policial_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Po_Policial_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Quo_Quorum_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Quo_Quorum_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Ro_Rodo_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Ro_Rodo_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/So_Sofa_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/So_Sofa_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/So_Sofa_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/So_Sofa_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/To_Tomate_Foto_1.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/To_Tomate_Foto_2.png', 1, 1, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/To_Tomate_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/To_Tomate_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Vo_Vovo_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Vo_Vovo_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Xo_Xororo_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Xo_Xororo_Imagem_2.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Zo_Zoologico_Imagem_1.png', 1, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/Imagens/Zo_Zoologico_Imagem_2.png', 1, 2, false);

-- ============================================================
-- Imagens do Jogo Colorir - Vogal A
-- estagio=1, colorir=2 (JOGO_COLORIR), formato=2 (DESENHO)
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, mascara, colorir, formato, deletado) VALUES
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/A_Avião_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/A_Avião_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/A_Avião_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/A_Avião_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ba_Banana_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ba_Banana_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ba_Banana_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ba_Banana_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ca_Cachorro_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ca_Cachorro_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ca_Cachorro_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ca_Cachorro_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Da_Dado_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Da_Dado_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Da_Dado_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Da_Dado_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Fa_Faca_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Fa_Faca_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Fa_Faca_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Fa_Faca_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ga_Gato_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ga_Gato_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ga_Gato_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ga_Gato_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ja_Jacaré_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ja_Jacaré_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ja_Jacaré_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ja_Jacaré_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/La_Lápis_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/La_Lápis_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/La_Lápis_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/La_Lápis_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ma_Macaco_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ma_Macaco_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ma_Macaco_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ma_Macaco_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Na_Navio_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Na_Navio_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Na_Navio_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Na_Navio_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Pa_Pato_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Pa_Pato_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Pa_Pato_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Pa_Pato_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Qua_Quati_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Qua_Quati_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Qua_Quati_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Qua_Quati_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ra_Rato_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ra_Rato_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ra_Rato_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ra_Rato_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Sa_Sapo_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Sa_Sapo_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Sa_Sapo_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Sa_Sapo_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ta_Tatu_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ta_Tatu_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Ta_Tatu_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Ta_Tatu_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Va_Vaca_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Va_Vaca_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Va_Vaca_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Va_Vaca_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Xa_Xadrez_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Xa_Xadrez_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Xa_Xadrez_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Xa_Xadrez_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Za_Zabumba_Colorir_1.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Za_Zabumba_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Imagens/Za_Zabumba_Colorir_2.png', 'http://localhost:3100/assets/Vogal_A/ImagensJogoColorir/Masks/Za_Zabumba_Colorir_2_mask.png', 2, 2, false);

-- ============================================================
-- Imagens do Jogo Colorir - Vogal O
-- estagio=1, colorir=2 (JOGO_COLORIR), formato=2 (DESENHO)
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, mascara, colorir, formato, deletado) VALUES
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Bo_Bolo_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Bo_Bolo_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Bo_Bolo_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Bo_Bolo_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Co_Coração_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Co_Coração_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Co_Coração_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Co_Coração_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Do_Doce_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Do_Doce_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Do_Doce_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Do_Doce_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Fo_Folha_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Fo_Folha_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Fo_Folha_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Fo_Folha_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Go_Goiaba_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Go_Goiaba_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Go_Goiaba_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Go_Goiaba_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Jo_Joaninha_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Jo_Joaninha_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Jo_Joaninha_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Jo_Joaninha_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Lo_Lobo_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Lo_Lobo_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Lo_Lobo_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Lo_Lobo_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Mo_Morango_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Mo_Morango_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Mo_Morango_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Mo_Morango_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/No_Noiva_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/No_Noiva_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/No_Noiva_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/No_Noiva_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/O_Ônibus_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/O_Ônibus_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/O_Ônibus_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/O_Ônibus_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Po_Policial_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Po_Policial_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Po_Policial_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Po_Policial_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Quo_Quorum_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Quo_Quorum_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Quo_Quorum_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Quo_Quorum_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Ro_Rodo_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Ro_Rodo_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Ro_Rodo_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Ro_Rodo_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/So_Sofá_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/So_Sofá_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/So_Sofá_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/So_Sofá_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/To_Tomate_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/To_Tomate_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/To_Tomate_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/To_Tomate_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Vo_Vovô_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Vo_Vovô_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Vo_Vovô_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Vo_Vovô_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Xo_Xororó_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Xo_Xororó_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Xo_Xororó_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Xo_Xororó_Colorir_2_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Zo_Zoológico_Colorir_1.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Zo_Zoológico_Colorir_1_mask.png', 2, 2, false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Imagens/Zo_Zoológico_Colorir_2.png', 'http://localhost:3100/assets/Vogal_O/ImagensJogoColorir/Masks/Zo_Zoológico_Colorir_2_mask.png', 2, 2, false);

-- ============================================================
-- CENAS - Vogal A
-- ============================================================
INSERT INTO cena (entidade_id, estagio, cena, quantidade_certas, quantidade_erradas) VALUES
((SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/avião1.tscn', 4, 10),
((SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/avião2.tscn', 6, 13),
((SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/banana1.tscn', 7, 11),
((SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/banana2.tscn', 6, 14),
((SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/cachorro1.tscn', 10, 14),
((SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/cachorro2.tscn', 11, 18),
((SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/dado1.tscn', 8, 12),
((SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/dado2.tscn', 5, 9),
((SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/faca1.tscn', 7, 15),
((SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/faca2.tscn', 5, 14),
((SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/gato1.tscn', 9, 16),
((SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/gato2.tscn', 10, 14),
((SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/jacaré1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/jacaré2.tscn', 8, 12),
((SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/lápis1.tscn', 5, 13),
((SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/lápis2.tscn', 5, 13),
((SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/macaco1.tscn', 12, 11),
((SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/macaco2.tscn', 10, 15),
((SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/navio1.tscn', 12, 12),
((SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/navio2.tscn', 11, 10),
((SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/pato1.tscn', 8, 10),
((SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/pato2.tscn', 10, 16),
((SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/quati1.tscn', 9, 13),
((SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/quati2.tscn', 9, 17),
((SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/rato1.tscn', 8, 17),
((SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/rato2.tscn', 8, 13),
((SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/sapo1.tscn', 7, 13),
((SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/sapo2.tscn', 13, 8),
((SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/tatu1.tscn', 9, 12),
((SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/tatu2.tscn', 8, 14),
((SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/vaca1.tscn', 9, 12),
((SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/vaca2.tscn', 8, 16),
((SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/xadrez1.tscn', 7, 12),
((SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/xadrez2.tscn', 6, 15),
((SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/zabumba1.tscn', 16, 9),
((SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1, 'res://scenes/imagens/Silabas_A/zabumba2.tscn', 6, 12);

-- ============================================================
-- IMAGENS Clique Colorir - Vogal A
-- colorir=3 (CLIQUE_COLORIR), formato=2, cena_id via subquery
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, colorir, formato, cena_id, deletado) VALUES
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/A_Avião_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/avião1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/A_Avião_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/avião1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/A_Avião_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/avião2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'A' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/A_Avião_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/avião2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ba_Banana_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/banana1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ba_Banana_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/banana1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ba_Banana_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/banana2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ba_Banana_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/banana2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ca_Cachorro_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/cachorro1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ca_Cachorro_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/cachorro1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ca_Cachorro_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/cachorro2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ca_Cachorro_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/cachorro2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Da_Dado_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/dado1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Da_Dado_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/dado1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Da_Dado_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/dado2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Da_Dado_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/dado2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Fa_Faca_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/faca1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Fa_Faca_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/faca1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Fa_Faca_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/faca2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Fa_Faca_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/faca2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ga_Gato_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/gato1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ga_Gato_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/gato1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ga_Gato_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/gato2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ga_Gato_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/gato2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ja_Jacaré_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/jacaré1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ja_Jacaré_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/jacaré1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ja_Jacaré_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/jacaré2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ja_Jacaré_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/jacaré2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/La_Lápis_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/lápis1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/La_Lápis_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/lápis1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/La_Lápis_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/lápis2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/La_Lápis_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/lápis2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ma_Macaco_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/macaco1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ma_Macaco_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/macaco1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ma_Macaco_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/macaco2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ma_Macaco_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/macaco2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Na_Navio_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/navio1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Na_Navio_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/navio1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Na_Navio_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/navio2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Na_Navio_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/navio2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Pa_Pato_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/pato1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Pa_Pato_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/pato1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Pa_Pato_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/pato2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Pa_Pato_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/pato2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Qua_Quati_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/quati1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Qua_Quati_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/quati1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Qua_Quati_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/quati2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Qua_Quati_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/quati2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ra_Rato_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/rato1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ra_Rato_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/rato1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ra_Rato_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/rato2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ra_Rato_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/rato2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Sa_Sapo_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/sapo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Sa_Sapo_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/sapo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Sa_Sapo_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/sapo2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Sa_Sapo_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/sapo2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ta_Tatu_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/tatu1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ta_Tatu_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/tatu1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ta_Tatu_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/tatu2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Ta_Tatu_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/tatu2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Va_Vaca_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/vaca1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Va_Vaca_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/vaca1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Va_Vaca_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/vaca2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Va_Vaca_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/vaca2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Xa_Xadrez_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/xadrez1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Xa_Xadrez_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/xadrez1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Xa_Xadrez_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/xadrez2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Xa_Xadrez_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/xadrez2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Za_Zabumba_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/zabumba1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Za_Zabumba_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/zabumba1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Za_Zabumba_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/zabumba2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 'http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Imagens/Za_Zabumba_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_A/zabumba2.tscn'), false);

-- FRAGMENTOS - Vogal A
-- Cada fragmento referencia a imagem _Imagem_1 da cena correspondente
-- (a imagem base/sem cor, que é onde os fragmentos se encaixam)
-- Contagem de fragmentos por imagem = quantidade_area_certa do JSON
-- ============================================================
INSERT INTO fragmento (caminho, imagem_id) VALUES

-- A_Avião_1 (4 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_1_Imagem_1%')),

-- A_Avião_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/A_Avião_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%A_Avião_2_Imagem_1%')),

-- Ba_Banana_1 (7 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_1_Imagem_1%')),

-- Ba_Banana_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ba_Banana_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ba_Banana_2_Imagem_1%')),

-- Ca_Cachorro_1 (10 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_1_Imagem_1%')),

-- Ca_Cachorro_2 (11 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ca_Cachorro_2_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ca_Cachorro_2_Imagem_1%')),

-- Da_Dado_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_1_Imagem_1%')),

-- Da_Dado_2 (5 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Da_Dado_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Da_Dado_2_Imagem_1%')),

-- Fa_Faca_1 (7 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_1_Imagem_1%')),

-- Fa_Faca_2 (5 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Fa_Faca_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fa_Faca_2_Imagem_1%')),

-- Ga_Gato_1 (9 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_1_Imagem_1%')),

-- Ga_Gato_2 (10 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ga_Gato_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ga_Gato_2_Imagem_1%')),

-- Ja_Jacaré_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_1_Imagem_1%')),

-- Ja_Jacaré_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ja_Jacaré_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ja_Jacaré_2_Imagem_1%')),

-- La_Lápis_1 (5 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_1_Imagem_1%')),

-- La_Lápis_2 (5 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/La_Lápis_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%La_Lápis_2_Imagem_1%')),

-- Ma_Macaco_1 (12 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_1_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_1_Imagem_1%')),

-- Ma_Macaco_2 (10 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ma_Macaco_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ma_Macaco_2_Imagem_1%')),

-- Na_Navio_1 (12 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_1_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_1_Imagem_1%')),

-- Na_Navio_2 (11 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Na_Navio_2_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Na_Navio_2_Imagem_1%')),

-- Pa_Pato_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_1_Imagem_1%')),

-- Pa_Pato_2 (10 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Pa_Pato_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Pa_Pato_2_Imagem_1%')),

-- Qua_Quati_1 (9 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_1_Imagem_1%')),

-- Qua_Quati_2 (9 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Qua_Quati_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Qua_Quati_2_Imagem_1%')),

-- Ra_Rato_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_1_Imagem_1%')),

-- Ra_Rato_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ra_Rato_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ra_Rato_2_Imagem_1%')),

-- Sa_Sapo_1 (7 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_1_Imagem_1%')),

-- Sa_Sapo_2 (13 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Sa_Sapo_2_Fragmento_13.png', (SELECT id FROM imagem WHERE imagem LIKE '%Sa_Sapo_2_Imagem_1%')),

-- Ta_Tatu_1 (9 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_1_Imagem_1%')),

-- Ta_Tatu_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Ta_Tatu_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ta_Tatu_2_Imagem_1%')),

-- Va_Vaca_1 (9 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_1_Imagem_1%')),

-- Va_Vaca_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Va_Vaca_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Va_Vaca_2_Imagem_1%')),

-- Xa_Xadrez_1 (7 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_1_Imagem_1%')),

-- Xa_Xadrez_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Xa_Xadrez_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xa_Xadrez_2_Imagem_1%')),

-- Za_Zabumba_1 (16 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_13.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_14.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_15.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_1_Fragmento_16.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_1_Imagem_1%')),

-- Za_Zabumba_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_A/ImagensCliqueColorir/Fragmentos/Za_Zabumba_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Za_Zabumba_2_Imagem_1%'));



-- ============================================================
-- CENAS - Vogal O
-- ============================================================
INSERT INTO cena (entidade_id, estagio, cena, quantidade_certas, quantidade_erradas) VALUES
((SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/bolo1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/bolo2.tscn', 6, 10),
((SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/coração1.tscn', 6, 10),
((SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/coração2.tscn', 6, 10),
((SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/doce1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/doce2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/folha1.tscn', 10, 6),
((SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/folha2.tscn', 10, 6),
((SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/goiaba1.tscn', 12, 4),
((SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/goiaba2.tscn', 7, 9),
((SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/joaninha1.tscn', 11, 5),
((SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/joaninha2.tscn', 9, 7),
((SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/lobo1.tscn', 11, 5),
((SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/lobo2.tscn', 7, 9),
((SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/morango1.tscn', 12, 4),
((SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/morango2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/noiva1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/noiva2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/ônibus1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/ônibus2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/policial1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/policial2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/quorum1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/quorum2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/rodo1.tscn', 5, 11),
((SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/rodo2.tscn', 6, 10),
((SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/sofá1.tscn', 10, 6),
((SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/sofá2.tscn', 12, 4),
((SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/tomate1.tscn', 10, 6),
((SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/tomate2.tscn', 12, 4),
((SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/vovô1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/vovô2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/xororó1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/xororó2.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/zoológico1.tscn', 8, 8),
((SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1, 'res://scenes/imagens/Silabas_O/zoológico2.tscn', 11, 5);

-- ============================================================
-- IMAGENS Clique Colorir - Vogal O
-- colorir=3 (CLIQUE_COLORIR), formato=2, cena_id via subquery
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, colorir, formato, cena_id, deletado) VALUES
-- BO - Bolo
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Bo_Bolo_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/bolo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Bo_Bolo_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/bolo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Bo_Bolo_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/bolo2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Bo_Bolo_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/bolo2.tscn'), false),
-- CO - Coração
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Co_Coração_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/coração1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Co_Coração_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/coração1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Co_Coração_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/coração2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Co_Coração_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/coração2.tscn'), false),
-- DO - Doce
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Do_Doce_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/doce1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Do_Doce_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/doce1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Do_Doce_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/doce2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'DO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Do_Doce_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/doce2.tscn'), false),
-- FO - Folha
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Fo_Folha_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/folha1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Fo_Folha_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/folha1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Fo_Folha_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/folha2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'FO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Fo_Folha_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/folha2.tscn'), false),
-- GO - Goiaba
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Go_Goiaba_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/goiaba1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Go_Goiaba_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/goiaba1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Go_Goiaba_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/goiaba2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'GO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Go_Goiaba_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/goiaba2.tscn'), false),
-- JO - Joaninha
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Jo_Joaninha_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/joaninha1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Jo_Joaninha_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/joaninha1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Jo_Joaninha_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/joaninha2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'JO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Jo_Joaninha_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/joaninha2.tscn'), false),
-- LO - Lobo
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Lo_Lobo_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/lobo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Lo_Lobo_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/lobo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Lo_Lobo_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/lobo2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Lo_Lobo_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/lobo2.tscn'), false),
-- MO - Morango
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Mo_Morango_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/morango1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Mo_Morango_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/morango1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Mo_Morango_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/morango2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Mo_Morango_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/morango2.tscn'), false),
-- NO - Noiva
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/No_Noiva_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/noiva1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/No_Noiva_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/noiva1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/No_Noiva_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/noiva2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'NO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/No_Noiva_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/noiva2.tscn'), false),
-- O - Ônibus
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/O_Ônibus_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/ônibus1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/O_Ônibus_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/ônibus1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/O_Ônibus_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/ônibus2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'O' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/O_Ônibus_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/ônibus2.tscn'), false),
-- PO - Policial
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Po_Policial_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/policial1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Po_Policial_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/policial1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Po_Policial_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/policial2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Po_Policial_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/policial2.tscn'), false),
-- QUO - Quorum
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Quo_Quorum_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/quorum1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Quo_Quorum_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/quorum1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Quo_Quorum_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/quorum2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'QUO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Quo_Quorum_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/quorum2.tscn'), false),
-- RO - Rodo
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Ro_Rodo_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/rodo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Ro_Rodo_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/rodo1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Ro_Rodo_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/rodo2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'RO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Ro_Rodo_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/rodo2.tscn'), false),
-- SO - Sofá
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/So_Sofá_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/sofá1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/So_Sofá_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/sofá1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/So_Sofá_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/sofá2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'SO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/So_Sofá_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/sofá2.tscn'), false),
-- TO - Tomate
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/To_Tomate_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/tomate1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/To_Tomate_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/tomate1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/To_Tomate_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/tomate2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/To_Tomate_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/tomate2.tscn'), false),
-- VO - Vovô
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Vo_Vovô_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/vovô1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Vo_Vovô_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/vovô1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Vo_Vovô_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/vovô2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Vo_Vovô_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/vovô2.tscn'), false),
-- XO - Xororó
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Xo_Xororó_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/xororó1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Xo_Xororó_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/xororó1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Xo_Xororó_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/xororó2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'XO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Xo_Xororó_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/xororó2.tscn'), false),
-- ZO - Zoológico
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Zo_Zoológico_1_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/zoológico1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Zo_Zoológico_1_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/zoológico1.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Zo_Zoológico_2_Imagem_1.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/zoológico2.tscn'), false),
(1, (SELECT id FROM silaba WHERE silaba = 'ZO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 'http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Imagens/Zo_Zoológico_2_Imagem_2.png', 3, 2, (SELECT id FROM cena WHERE cena = 'res://scenes/imagens/Silabas_O/zoológico2.tscn'), false);

-- ============================================================
-- FRAGMENTOS - Vogal O
-- ============================================================
INSERT INTO fragmento (caminho, imagem_id) VALUES

-- Bo_Bolo_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_1_Imagem_1%')),

-- Bo_Bolo_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Bo_Bolo_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Bo_Bolo_2_Imagem_1%')),

-- Co_Coração_1 (6 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_1_Imagem_1%')),

-- Co_Coração_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Co_Coração_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Co_Coração_2_Imagem_1%')),

-- Do_Doce_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_1_Imagem_1%')),

-- Do_Doce_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Do_Doce_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Do_Doce_2_Imagem_1%')),

-- Fo_Folha_1 (10 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_1_Imagem_1%')),

-- Fo_Folha_2 (10 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Fo_Folha_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Fo_Folha_2_Imagem_1%')),

-- Go_Goiaba_1 (12 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_1_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_1_Imagem_1%')),

-- Go_Goiaba_2 (7 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Go_Goiaba_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Go_Goiaba_2_Imagem_1%')),

-- Jo_Joaninha_1 (11 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_1_Imagem_1%')),

-- Jo_Joaninha_2 (9 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Jo_Joaninha_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Jo_Joaninha_2_Imagem_1%')),

-- Lo_Lobo_1 (11 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_1_Imagem_1%')),

-- Lo_Lobo_2 (7 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Lo_Lobo_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Lo_Lobo_2_Imagem_1%')),

-- Mo_Morango_1 (12 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_1_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_1_Imagem_1%')),

-- Mo_Morango_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Mo_Morango_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Mo_Morango_2_Imagem_1%')),

-- No_Noiva_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_1_Imagem_1%')),

-- No_Noiva_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/No_Noiva_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%No_Noiva_2_Imagem_1%')),

-- O_Ônibus_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_1_Imagem_1%')),

-- O_Ônibus_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/O_Ônibus_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%O_Ônibus_2_Imagem_1%')),

-- Po_Policial_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_1_Imagem_1%')),

-- Po_Policial_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Po_Policial_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Po_Policial_2_Imagem_1%')),

-- Quo_Quorum_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_1_Imagem_1%')),

-- Quo_Quorum_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Quo_Quorum_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Quo_Quorum_2_Imagem_1%')),

-- Ro_Rodo_1 (5 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_1_Imagem_1%')),

-- Ro_Rodo_2 (6 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Ro_Rodo_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Ro_Rodo_2_Imagem_1%')),

-- So_Sofá_1 (10 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_1_Imagem_1%')),

-- So_Sofá_2 (12 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/So_Sofá_2_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%So_Sofá_2_Imagem_1%')),

-- To_Tomate_1 (10 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_1_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_1_Imagem_1%')),

-- To_Tomate_2 (12 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/To_Tomate_2_Fragmento_12.png', (SELECT id FROM imagem WHERE imagem LIKE '%To_Tomate_2_Imagem_1%')),

-- Vo_Vovô_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_1_Imagem_1%')),

-- Vo_Vovô_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Vo_Vovô_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Vo_Vovô_2_Imagem_1%')),

-- Xo_Xororó_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_1_Imagem_1%')),

-- Xo_Xororó_2 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Xo_Xororó_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Xo_Xororó_2_Imagem_1%')),

-- Zo_Zoológico_1 (8 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_1_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_1_Imagem_1%')),

-- Zo_Zoológico_2 (11 fragmentos)
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_1.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_2.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_3.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_4.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_5.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_6.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_7.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_8.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_9.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_10.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%')),
('http://localhost:3100/assets/Vogal_O/ImagensCliqueColorir/Fragmentos/Zo_Zoológico_2_Fragmento_11.png', (SELECT id FROM imagem WHERE imagem LIKE '%Zo_Zoológico_2_Imagem_1%'));



-- ============================================================
-- 1) Inserir as Palavras
-- ============================================================
INSERT INTO palavra (palavra, som, deletado) VALUES
  ('ARARA',  'http://localhost:3100/assets/Vogal_A/AudiosPalavras/arara.ogg',  false),
  ('BALA',   'http://localhost:3100/assets/Vogal_A/AudiosPalavras/bala.ogg',   false),
  ('BANANA', 'http://localhost:3100/assets/Vogal_A/AudiosPalavras/banana.ogg', false),
  ('BATATA', 'http://localhost:3100/assets/Vogal_A/AudiosPalavras/batata.ogg', false),
  ('CAMA',   'http://localhost:3100/assets/Vogal_A/AudiosPalavras/cama.ogg',   false),
  ('FACA',   'http://localhost:3100/assets/Vogal_A/AudiosPalavras/faca.ogg',   false),
  ('LATA',   'http://localhost:3100/assets/Vogal_A/AudiosPalavras/lata.ogg',   false),
  ('MALA',   'http://localhost:3100/assets/Vogal_A/AudiosPalavras/mala.ogg',   false),
  ('SALADA', 'http://localhost:3100/assets/Vogal_A/AudiosPalavras/salada.ogg', false),
  ('VACA',   'http://localhost:3100/assets/Vogal_A/AudiosPalavras/vaca.ogg',   false),
  ('BOLA',   'http://localhost:3100/assets/Vogal_O/AudiosPalavras/bola.ogg',   false),
  ('BOLO',   'http://localhost:3100/assets/Vogal_O/AudiosPalavras/bolo.ogg',   false),
  ('CAVALO', 'http://localhost:3100/assets/Vogal_O/AudiosPalavras/cavalo.ogg', false),
  ('COCO',   'http://localhost:3100/assets/Vogal_O/AudiosPalavras/coco.ogg',   false),
  ('COPO',   'http://localhost:3100/assets/Vogal_O/AudiosPalavras/copo.ogg',   false),
  ('GATO',   'http://localhost:3100/assets/Vogal_O/AudiosPalavras/gato.ogg',   false),
  ('MACACO', 'http://localhost:3100/assets/Vogal_O/AudiosPalavras/macaco.ogg', false),
  ('MOTO',   'http://localhost:3100/assets/Vogal_O/AudiosPalavras/moto.ogg',   false),
  ('OVO',    'http://localhost:3100/assets/Vogal_O/AudiosPalavras/ovo.ogg',    false);

-- ============================================================
-- 2) Imagens das Palavras (entidade_id → id da palavra)
--    Reutilizando os mesmos arquivos de imagem das sílabas,
--    mas criando novos registros apontando para a tabela palavra
-- ============================================================
INSERT INTO imagem (estagio, entidade_id, imagem, colorir, formato, deletado) VALUES
-- ARARA (sílaba de referência: A)
(2, (SELECT id FROM palavra WHERE palavra = 'ARARA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/A_Arara_Foto_1.png',    1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'ARARA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/A_Arara_Imagem_1.png',  1, 2, false),

-- BALA (sílaba BA)
(2, (SELECT id FROM palavra WHERE palavra = 'BALA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Bala_Foto_1.png',    1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BALA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Bala_Imagem_1.png',  1, 2, false),

-- BANANA (sílaba BA)
(2, (SELECT id FROM palavra WHERE palavra = 'BANANA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Banana_Foto_1.png',  1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BANANA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Banana_Foto_2.png',  1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BANANA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Banana_Imagem_1.png',1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BANANA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Banana_Imagem_2.png',1, 2, false),

-- BATATA (sílaba BA)
(2, (SELECT id FROM palavra WHERE palavra = 'BATATA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Batata_Foto_1.png',  1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BATATA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ba_Batata_Imagem_1.png',1, 2, false),

-- CAMA (sílaba CA)
(2, (SELECT id FROM palavra WHERE palavra = 'CAMA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ca_Cama_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'CAMA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ca_Cama_Imagem_1.png', 1, 2, false),

-- FACA (sílaba FA)
(2, (SELECT id FROM palavra WHERE palavra = 'FACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Fa_Faca_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'FACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Fa_Faca_Foto_2.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'FACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Fa_Faca_Imagem_1.png', 1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'FACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Fa_Faca_Imagem_2.png', 1, 2, false),

-- LATA (sílaba LA)
(2, (SELECT id FROM palavra WHERE palavra = 'LATA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/La_Lata_Imagem_1.png', 1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'LATA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/La_Lata_Imagem_2.png', 1, 2, false),

-- MALA (sílaba MA)
(2, (SELECT id FROM palavra WHERE palavra = 'MALA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ma_Mala_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'MALA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ma_Mala_Imagem_1.png', 1, 2, false),

-- SALADA (sílaba SA)
(2, (SELECT id FROM palavra WHERE palavra = 'SALADA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Sa_Salada_Foto_1.png', 1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'SALADA'), 'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Sa_Salada_Imagem_1.png',1, 2, false),

-- VACA (sílaba VA)
(2, (SELECT id FROM palavra WHERE palavra = 'VACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Va_Vaca_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'VACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Va_Vaca_Foto_2.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'VACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Va_Vaca_Imagem_1.png', 1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'VACA'),   'http://localhost:3100/assets/Vogal_A/ImagensPalavras/Va_Vaca_Imagem_2.png', 1, 2, false),

-- BOLA (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'BOLA'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Bo_Bola_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BOLA'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Bo_Bola_Imagem_1.png', 1, 2, false),

-- BOLO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'BOLO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Bo_Bolo_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BOLO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Bo_Bolo_Foto_2.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BOLO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Bo_Bolo_Imagem_1.png', 1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'BOLO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Bo_Bolo_Imagem_2.png', 1, 2, false),

-- CAVALO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'CAVALO'), 'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ca_Cavalo_Foto_1.png', 1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'CAVALO'), 'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ca_Cavalo_Imagem_1.png',1, 2, false),

-- COCO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'COCO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Co_Coco_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'COCO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Co_Coco_Imagem_1.png', 1, 2, false),

-- COPO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'COPO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Co_Copo_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'COPO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Co_Copo_Imagem_1.png', 1, 2, false),

-- GATO (vogal O — arquivo está na pasta Vogal_O conforme print)
(2, (SELECT id FROM palavra WHERE palavra = 'GATO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ga_Gato_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'GATO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ga_Gato_Foto_2.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'GATO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ga_Gato_Imagem_1.png', 1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'GATO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ga_Gato_Imagem_2.png', 1, 2, false),

-- MACACO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'MACACO'), 'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ma_Macaco_Foto_1.png', 1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'MACACO'), 'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ma_Macaco_Foto_2.png', 1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'MACACO'), 'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ma_Macaco_Imagem_1.png',1, 2, false),
(2, (SELECT id FROM palavra WHERE palavra = 'MACACO'), 'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Ma_Macaco_Imagem_2.png',1, 2, false),

-- MOTO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'MOTO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Mo_Moto_Foto_1.png',   1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'MOTO'),   'http://localhost:3100/assets/Vogal_O/ImagensPalavras/Mo_Moto_Imagem_1.png', 1, 2, false),

-- OVO (vogal O)
(2, (SELECT id FROM palavra WHERE palavra = 'OVO'),    'http://localhost:3100/assets/Vogal_O/ImagensPalavras/O_Ovo_Foto_1.png',     1, 1, false),
(2, (SELECT id FROM palavra WHERE palavra = 'OVO'),    'http://localhost:3100/assets/Vogal_O/ImagensPalavras/O_Ovo_Imagem_1.png',   1, 2, false);

-- ============================================================
-- 3) Ligar cada palavra às suas sílabas (palavra_silaba)
-- ============================================================
INSERT INTO palavra_silaba (palavra_id, silaba_id, posicao) VALUES
-- ARARA: A-RA-RA
((SELECT id FROM palavra WHERE palavra = 'ARARA'),  (SELECT id FROM silaba WHERE silaba = 'A'  AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'ARARA'),  (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
((SELECT id FROM palavra WHERE palavra = 'ARARA'),  (SELECT id FROM silaba WHERE silaba = 'RA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 3),
-- BALA: BA-LA
((SELECT id FROM palavra WHERE palavra = 'BALA'),   (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'BALA'),   (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- BANANA: BA-NA-NA
((SELECT id FROM palavra WHERE palavra = 'BANANA'), (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'BANANA'), (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
((SELECT id FROM palavra WHERE palavra = 'BANANA'), (SELECT id FROM silaba WHERE silaba = 'NA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 3),
-- BATATA: BA-TA-TA
((SELECT id FROM palavra WHERE palavra = 'BATATA'), (SELECT id FROM silaba WHERE silaba = 'BA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'BATATA'), (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
((SELECT id FROM palavra WHERE palavra = 'BATATA'), (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 3),
-- CAMA: CA-MA
((SELECT id FROM palavra WHERE palavra = 'CAMA'),   (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'CAMA'),   (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- FACA: FA-CA
((SELECT id FROM palavra WHERE palavra = 'FACA'),   (SELECT id FROM silaba WHERE silaba = 'FA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'FACA'),   (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- LATA: LA-TA
((SELECT id FROM palavra WHERE palavra = 'LATA'),   (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'LATA'),   (SELECT id FROM silaba WHERE silaba = 'TA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- MALA: MA-LA
((SELECT id FROM palavra WHERE palavra = 'MALA'),   (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'MALA'),   (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- SALADA: SA-LA-DA
((SELECT id FROM palavra WHERE palavra = 'SALADA'), (SELECT id FROM silaba WHERE silaba = 'SA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'SALADA'), (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
((SELECT id FROM palavra WHERE palavra = 'SALADA'), (SELECT id FROM silaba WHERE silaba = 'DA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 3),
-- VACA: VA-CA
((SELECT id FROM palavra WHERE palavra = 'VACA'),   (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'VACA'),   (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- BOLA: BO-LA
((SELECT id FROM palavra WHERE palavra = 'BOLA'),   (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1),
((SELECT id FROM palavra WHERE palavra = 'BOLA'),   (SELECT id FROM silaba WHERE silaba = 'LA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
-- BOLO: BO-LO
((SELECT id FROM palavra WHERE palavra = 'BOLO'),   (SELECT id FROM silaba WHERE silaba = 'BO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1),
((SELECT id FROM palavra WHERE palavra = 'BOLO'),   (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 2),
-- CAVALO: CA-VA-LO
((SELECT id FROM palavra WHERE palavra = 'CAVALO'), (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'CAVALO'), (SELECT id FROM silaba WHERE silaba = 'VA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
((SELECT id FROM palavra WHERE palavra = 'CAVALO'), (SELECT id FROM silaba WHERE silaba = 'LO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 3),
-- COCO: CO-CO
((SELECT id FROM palavra WHERE palavra = 'COCO'),   (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1),
((SELECT id FROM palavra WHERE palavra = 'COCO'),   (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 2),
-- COPO: CO-PO
((SELECT id FROM palavra WHERE palavra = 'COPO'),   (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1),
((SELECT id FROM palavra WHERE palavra = 'COPO'),   (SELECT id FROM silaba WHERE silaba = 'PO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 2),
-- GATO: GA-TO
((SELECT id FROM palavra WHERE palavra = 'GATO'),   (SELECT id FROM silaba WHERE silaba = 'GA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'GATO'),   (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 2),
-- MACACO: MA-CA-CO
((SELECT id FROM palavra WHERE palavra = 'MACACO'), (SELECT id FROM silaba WHERE silaba = 'MA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 1),
((SELECT id FROM palavra WHERE palavra = 'MACACO'), (SELECT id FROM silaba WHERE silaba = 'CA' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'A')), 2),
((SELECT id FROM palavra WHERE palavra = 'MACACO'), (SELECT id FROM silaba WHERE silaba = 'CO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 3),
-- MOTO: MO-TO
((SELECT id FROM palavra WHERE palavra = 'MOTO'),   (SELECT id FROM silaba WHERE silaba = 'MO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1),
((SELECT id FROM palavra WHERE palavra = 'MOTO'),   (SELECT id FROM silaba WHERE silaba = 'TO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 2),
-- OVO: O-VO
((SELECT id FROM palavra WHERE palavra = 'OVO'),    (SELECT id FROM silaba WHERE silaba = 'O'  AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 1),
((SELECT id FROM palavra WHERE palavra = 'OVO'),    (SELECT id FROM silaba WHERE silaba = 'VO' AND vogal_id = (SELECT id FROM vogal WHERE vogal = 'O')), 2);