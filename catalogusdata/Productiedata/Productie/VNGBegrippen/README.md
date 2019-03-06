# VNG Begrippen

De begrippen, zoals initieel aangeleverd vanuit VNG:

- VNG vulling Stelselcatalogus v1.xls is het originele bronbestand
- VNGBegrippen-acc.ttl (deprecated) betreft de vulling voor acceptatie (met acceptatie-URI's)
- VNGBegrippen.ttl betreft de vulling voor productie (met productie-URI's)
- Mastergraph-acc.ttl (deprecated) betreft de aanvullingen op de mastergraph voor acceptatie
- Mastergraph.ttl betreft de aanvullingen op de mastergraph voor productie

In de laatste vier bestanden staat bovenin de comment de URI van de named graph die gebruikt *MOET* worden voor het laden van de data.

- Bij de mastergraph betreft het een *AANVULLING*, dus een POST-query.
- Bij de transaction graphs betreft het een *NIEUWE*, dus een PUT-query.
