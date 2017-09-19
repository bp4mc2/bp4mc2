# KKG stereotypes en tagged values

## Stereotypes
Onderstaande tabel geeft de KKG stereotypes weer, inclusief de UML metaklasse waar het stereotype gebruikt kan worden.

| Stereotype 				| UML element 					| Betekenis
|---------------------------|-------------------------------|-------------
| Attribuutsoort 			| Property / Attribute 			| De typering van gelijksoortige gegevens die voor een objecttype van toepassing is. 																						
| Codelist 					| Datatype 						| De definitie van een codelist is gelijk aan de definitie van een referentielijst. 
| Constraint 				| Constraint 					| Een constraint is een conditie of een beperking, die over een of meerdere modelelementen uit het informatiemodel geldt. 
| Data element 				| Property / Attribute 			| Een onderdeel/element van een Complex datatype die als type een datatype heeft. 
| Domein (het eigen IM )	| Package 						|
| Enumeratie 				| Enumeration 					| Een datatype waarvan de mogelijke waarden zijn opgesomd in een lijst. 
| Enumeratiewaarde 			| EnumerationLiteral 			| Een gedefinieerde waarde, in de vorm van een eenmalig vastgesteld constant gegeven. 
| Extern 					| Package 						| Een groepering van constructies die een externe instantie beheert en beschikbaar stelt aan een informatiemodel en die in het informatiemodel ongewijzigd gebruikt worden. 
| Externe koppeling 		| Association 					| Een associatie waarmee vanuit het perspectief van het eigen informatiemodel een objecttype uit het ‘eigen’ informatiemodel gekoppeld wordt aan een objecttype van een extern informatiemodel. De relatie zelf hoort bij het ‘eigen’ objecttype. 
| Gegevensgroep 			| Association 					| Een typering van een groep van gelijksoortige gegevens die voor een objecttype van toepassing is. 
| Gegevensgroeptype 		| Class 						| Een groep van met elkaar samenhangende attribuutsoorten. Een gegevensgroeptype is altijd een type van een gegevensgroep. 
| Generalisatie 			| Generalization 				| De typering van het hiërarchische verband tussen een meer generiek object van een objecttype en een meer specifiek object van een ander objecttype waarbij het laatstgenoemde object eigenschappen van het eerstgenoemde object overerft. 
| Gestructureerd datatype	| Datatype 						|
| Objecttype 				| Class 						| De typering van een groep objecten (in de werkelijkheid) die binnen een domein relevant zijn en als gelijksoortig worden beschouwd. 
| Primitief datatype 		| Primitive type 				| Een standaard datatype, zoals bekend in vele specificatietalen, dat de structuur van een gegeven beschrijft. Het metamodel volgt waar mogelijk de definities zoals beschreven in ISO standaarden 
| Referentie element 		| Property / Attribute 			| Een eigenschap van een object in een referentielijst in de vorm van een gegeven. 
| Referentielijst 			| Datatype 						| Een lijst met een opsomming van de mogelijke domeinwaarden van een attribuutsoort, die buiten het model in een externe waardenlijst worden beheerd. De domeinwaarden in de lijst kunnen in de loop van de tijd aangepast, uitgebreid, of verwijderd worden, zonder dat het informatiemodel aangepast wordt (in tegenstelling tot bij een enumeratie). 
| Relatieklasse 			| Association en (UML) Class	| Een relatiesoort met eigenschappen. |
| Relatierol 				| Property / Attribute 			| De benaming van de manier waarop een object deelneemt aan een relatie met een ander object. 
| Relatiesoort 				| Association 					| De typering van het structurele verband tussen een object van een objecttype en een (ander) object van een ander (of hetzelfde) objecttype. 
| Union element 			| Property / Attribute 			| Een type dat gebruikt kan worden voor het attribuut zoals beschreven in de definitie van Union. Het union element is een onderdeel van een Union, uitgedrukt in een eigenschap (attribute) van een union, die als keuze binnen de Union is gerepresenteerd. 
| Union 					| Datatype 						| Gestructureerd datatype, waarmee wordt aangegeven dat er meer dan één mogelijkheid is voor het datatype van een attribuut. Het attribuut zelf krijgt als datatype de union. De union biedt een keuze uit verschillende datatypes, elk afzonderlijk beschreven in een union element. 
| View 						| Package 						| Een groepering van objecttypen die gespecificeerd zijn in een extern informatiemodel en vanuit het perspectief van het eigen informatiemodel inzicht geeft welke gegevens van deze objecttypen relevant zijn binnen het eigen informatiemodel. 

Stereotypes worden vertaald naar een `owl:ObjectProperty` met de URI `uml:stereotype` waarbij het triple-subject van het type `sh:NodeShape` of `sh:PropertyShape` is, en het triple-object van het type `skos:Concept` is. Elke stereotype wordt gedefinieerd als een `skos:Concept` is de `skos:ConceptScheme` KKG.

## Tagged values
Onderstaande tabel geeft alle KKG tagged values weer, inclusief de mapping naar een `rdf:Property` uit een standaard Linked Data vocabulaire. Indien er geen vocabulaire voorhanden is (bijvoorbeeld omdat de tagged value uniek is voor KKG), dan wordt verwezen naar de kkg vocabulaire dmv de namespace prefix `kkgtag`.
Lege value in betekenis betekend zelfde betekenis als bij zelfde tagged value in andere categorie. > voor betekenis staat voor afwijkende betekenis ten opzichte van andere categorie.

| Tagged value type (key)		| RDF property 					 	| Categorie 				|Betekenis
|-------------------------------|-----------------------------------|---------------------------|-------------------------------
| Authentiek 					| ldqd:trustworthiness			 	| 							| Aanduiding of het een authentiek gegeven betreft. 	
|								|									| Relatiesoort				| Aanduiding of de attribuutsoort waarvan de relatiesoort is afgeleid, een authentiek gegeven (attribuutsoort) betreft.
| Bezit 						| kkg:bezit						 	| 							| ?																								
| Code 							| kkg:code		 				 	| 							| De in een registratie of informatiemodel aan de enumeratiewaarde toegekende unieke code.																								
| Datum opname 					| prov:generatedAtTime 			 	| 							| De datum waarop <categorie> is opgenomen in het informatiemodel.																								
| Definitie 					| skos:definition 				 	| 							| De beschrijving van de betekenis van <categorie> zoals gespecificeerd in de catalogus van de desbetreffende (basis)registratie of informatiemodel.																								
| Domein.FormeelPatroon			| kkg:domeinFormeelPatroon		 	| 							| Zoals patroon, formeel vastgelegd (met een reguliere expressie), uitgedrukt in een formele taal die door de computer wordt herkend.
| Domein.Lengte 				| kkg:domeinLengte				 	| 							| De aanduiding van de lengte van een gegeven. Getallen kunnen altijd positief of negatief zijn.
| Domein.Patroon 				| kkg:domeinPatroon				 	| 							| De verzameling van waarden die gegevens van deze attribuutsoort kunnen hebben, oftewel het waardenbereik, uitgedrukt in een specifieke structuur.																								
| Domein.Type 					| kkg:domeinType				 	| 							| Het type waarmee waarden van deze attribuutsoort worden vastgelegd. Dit is altijd conform een datatype uit dit metamodel (of een extensie ervan). Betreft het een waarde uit een dynamische waardentabel, dan wordt de naam van de desbetreffende referentielijst of codelist als type vermeld. Indien het een waarde uit een statische opsomming van waarden betreft, dan wordt de naam van de desbetreffende enumeratie als type vermeld.
| Gerelateerd objecttype 		| kkg:gerelateerdObjecttype		 	| 							| Het objecttype waarmee een objecttype een logisch verband heeft
|								| thes:narrowerGeneric				| Generalisatie				| Het objecttype dat de generalisatie is van een (ander) objecttype.
| Heeft 						| kkg:Gegevensgroep 			 	| 							| ?
| Herkomst 						| skos:editorialNote 			 	| 							| De registratie of het informatiemodel waaraan <categorie> ontleend is dan wel de eigen organisatie indien het door de eigen organisatie toegevoegd is.
| Herkomst definitie 			| dct:source 					 	| 							| De registratie of het informatiemodel waaruit de definitie is overgenomen dan wel een aanduiding die aangeeft uit welke bronnen de definitie is samengesteld.
| Identificerend 				| kkg:identificerend			 	| 							| Aanduiding dat attribuutsoort onderdeel uitmaakt van de unieke aanduiding van een object																								
| Indicatie abstract object 	| kkg:indicatieAbstractObject	 	| 							| Conceptueel model: indicatie dat het objecttype een generalisatie is, waarvan een object als specialisatie altijd voorkomt in de hoedanigheid van een (en slechts één) van de specialisaties van het betreffende objecttype. 
|								|									|							| Logisch model: Indicatie dat er geen instanties (objecten) voor het betreffende objecttype mogen voorkomen.
| Indicatie afleidbaar 			| prov:wasDerivedFrom 			 	| 							| Aanduiding dat gegeven afleidbaar is uit andere attribuut- en/of relatiesoorten.																								
| Indicatie formele historie	| kkg:indicatieFormeleHistorie	 	| 							| Indicatie of de formele historie van <categorie> te bevragen is. Formele historie geeft aan wanneer in de administratie een verandering is verwerkt van de attribuutwaarde (wanneer was de verandering bekend en is deze verwerkt).
| Indicatie materiële historie 	| kkg:indicatieMaterieleHistorie 	| 							| Indicatie of de materiële historie van <categorie> te bevragen is. Materiële historie geeft aan wanneer een verandering is opgetreden in de werkelijkheid die heeft geleid tot verandering van de attribuutwaarde.
| Kardinaliteit 				| sh:minCount / sh:maxCount		 	| Attribuutsoort			| Deze indicatie geeft aan hoeveel keer waarden van deze attribuutsoort kunnen voorkomen bij een object van het betreffende objecttype, of bij het betreffende gegevensgroeptype. Indien een attribuutsoort deel uit maakt van een gegevensgroeptype, dan wordt de kardinaliteit vermeld van het attribuutsoort binnen het gegevensgroeptype. Voor de uiteindelijke kardinaliteit van hoe vaak een gegeven voorkomt bij het object moet rekening gehouden worden met de kardinaliteit van de gegevensgroep en met de kardinaliteit van de attribuutsoort.																								
|								|									| Gegevensgroep				| Deze indicatie geeft aan hoeveel keer de gegevensgroep kan voorkomen bij een object van het betreffende objecttype. Indien een attribuutsoort deel uit maakt van een gegevensgroeptype, dan wordt de kardinaliteit vermeld van het attribuutsoort binnen het gegevensgroeptype. Voor de uiteindelijke kardinaliteit van hoe vaak een gegeven voorkomt bij het object moet rekening gehouden worden met de kardinaliteit van de gegevensgroep en met de kardinaliteit van de attribuutsoort.
|								|									| Relatiesoort				| Deze indicatie geeft aan hoeveel keer waarden van deze relatiesoort (i.c. relaties) kunnen voorkomen bij een object van het betreffende objecttype. Indien een relatiesoort deel uit maakt van een gegevensgroeptype, dan wordt de kardinaliteit vermeld van de relatiesoort binnen het gegevensgroeptype. Voor de uiteindelijke kardinaliteit van de relatiesoort moet ook rekening gehouden worden met de kardinaliteit van het gegevensgroeptype.
|								|									| Relatierol				| Deze indicatie geeft aan hoeveel keer waarden van deze relatierol kunnen voorkomen.
|								|									| Referentie element		| Deze indicatie geeft aan hoeveel keer waarden van dit referentie-element kunnen voorkomen bij een refentielijst van het betreffende type
|								|									| Data element				| Deze indicatie geeft aan hoeveel keer waarden van dit data-element kunnen voorkomen bij een refentielijst van het betreffende type.
|								|									| Union element				| Deze indicatie geeft aan hoeveel keer waarden van dit unionelement kunnen voorkomen bij een referentielijst van het betreffende type. De kardinaliteit van een unionelement is altijd 1.
| Kwaliteit 					| ldqd:semanticAccuracy 		 	| 							| Voor objecttypen die deel uitmaken van een registratie betreft dit de waarborgen voor de juistheid van de in de registratie opgenomen objecten van het desbetreffende type.																								
| Locatie 						| ? kkg:locatie  				 	| 							| Als het type van het attribuutsoort een waardenlijst is, dan wordt hier de locatie waar deze te vinden is opgegeven. Dit is in principe een URI (als er geen URI is, dan kan dit een URL zijn, waar de waardenlijst op basis van de naam van de waardenlijst te vinden is).																								
| Mogelijk geen waarde 			| ? xsi:nil 					 	| 							| Aanduiding dat attribuutsoort geen waarde kan bevatten (de waarde zou er kunnen zijn, maar kan ook onbekend zijn, of bewust weggelaten). 																						
| Naam 							| skos:prefLabel 				 	| 							| De naam van <categorie>.
| Populatie 					| ldqd:completeness 			 	| 							| Voor objecttypen die deel uitmaken van een (basis)registratie betreft dit de beschrijving van de exemplaren van het gedefinieerde objecttype die in de desbetreffende (basis)-registratie voorhanden zijn.																								
| Specificatie formeel 			| kkg:specificatieFormeel		 	| 							| De beschrijving van de constraint in een formele specificatietaal, in OCL
| Specificatie tekst 			| kkg:specificatieTekst 		 	| 							| De specificatie van de constraint in normale tekst.
| Toelichting 					| skos:scopeNote 				 	| 							| Een inhoudelijke toelichting op <categorie>.
| Type aggregatie 				| kkg:typeAggregatie			 	| 							| Standaard betreft het geen aggregatie (None). Het type aggregatie mag ‘composite’ zijn. Dit wordt gedaan als er een afhankelijkheid is in die zin dat de target niet kan bestaan zonder de source: de target vervalt als de source vervalt.																								
| Uni-directioneel 				| kkg:uniDirectioneel			 	| 							| Het gerelateerde objecttype (de target) waarvan het objecttype, die de eigenaar is van deze relatie (de source), kennis heeft. Alle relaties zijn altijd gericht van het objecttype (source) naar het gerelateerde objecttype (target).
| Unieke aanduiding 			| skos:notation 				 	| 							| Voor objecttypen die deel uitmaken van een (basis)registratie of informatiemodel betreft dit de wijze waarop daarin voorkomende objecten (van dit type) uniek in de registratie worden aangeduid.																								
| Verwijst naar 				| kkg:verwijstNaar 				 	| 							|																								
| Verwijst naar generieke 		| ? rdfs:type 			 		 	|							|																								



In het geval een informatiemodel expliciet `skos:Concept` elementen onderkent naast `owl:Class`, dan zal `skos:definition` verbonden worden met het `skos:Concept` en kan `dc:source` gebruikt worden ipv `skos:editorialNote`.