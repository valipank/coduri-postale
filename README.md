# Coduri Poștale România

Bază de date creată pe baza fișierului **Infocod Mai 2016** de pe pagina  _guvernamentală_  [Coduri poștale România](https://data.gov.ro/dataset/coduri-postale-romania).

Am păstrat câte o tabelă pentru fiecare din cele 3 sheet-uri ale documentului xls:
1. **coduri_postale_b** = tabelă cu codurile poștale din București (conține, pe lângă informațiile standard din prezente și în celelalte tabele, sectorul și oficiul de distribuire)
2. **coduri_postale_localitati_mari** = tabelă cu codurile poștale din localitățile cu mai mult de 50.000 de locuitori
3. **coduri_postale_localitati_mici** = tabelă cu codurile poștale din localitățile cu mai puțin de 50.000 de locuitori (orașe mici, sate, comune)
4. **judete_ro** = lista județelor din România și orașele reședință de județ (inclusiv populația județelor - nu cred că cifrele mai sunt de actualitate la data acestui commit - feb/2022).
Pe baza acestei tabele am generat un [fișier json](https://github.com/valipank/corona-ro-api/blob/main/api/json/judete.json) care este expus ca API la [https://valipank.ro/api/v1/judete](https://valipank.ro/api/v1/judete/)
5. **v_coduripostale** = un  _view_  care grupează datele din cele 4 tabele (doar informațiile de bază, fără [cod SIRUTA](https://www.siruta.nxm.ro/)) - e util petru a ușura interogările pe MySQL:
	1. judet_cod = codul județului
	2. localitate = numele localității (fie oraș, sat, comună)
	3. tip_artera = tipul arterei (stradă, șosea, bulevard, piață, etc)
	4. numar = numărul 
	5. cod_postal = codul poștal alocat combinației județ|localitate|arteră|număr

Ideea a pornit de la [https://github.com/romania/coduri-postale](https://github.com/romania/coduri-postale) :) 

---

This repo contains the same data base from [https://github.com/romania/coduri-postale](https://github.com/romania/coduri-postale) but having resolved some diacritics