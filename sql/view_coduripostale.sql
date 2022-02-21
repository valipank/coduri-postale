
-- Dumping structure for view v_coduripostale
DROP VIEW IF EXISTS `v_coduripostale`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_coduripostale`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_coduripostale` AS 
SELECT 
  'B' AS judet_cod, 
  'București' AS localitate, 
  tip_artera, 
  denumire_artera, 
  numar, 
  cod_postal 
FROM 
  coduri_postale_b 
UNION 
SELECT 
  j.judet_cod, 
  l.localitate, 
  l.tip_artera, 
  l.denumire_artera, 
  l.numar_bloc AS numar, 
  l.cod_postal 
FROM 
  coduri_postale_localitati_mari l 
  LEFT OUTER JOIN judete_ro j ON l.judet_nume = j.judet_nume 
union 
SELECT 
  j.judet_cod, 
  l.localitate, 
  null, 
  null, 
  NULL, 
  l.cod_postal 
FROM 
  coduri_postale_localitati_mici l 
  LEFT OUTER JOIN judete_ro j ON l.judet_nume = j.judet_nume ;