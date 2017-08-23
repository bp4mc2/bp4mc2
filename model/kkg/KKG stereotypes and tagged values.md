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

| Tagged value type (key)		| RDF property 				| Betekenis
|-------------------------------|---------------------------|-----------
| Authentiek 					| ldqd:trustworthiness		| Authentiek / Basisgegeven / Landelijk Kerngegeven / Gemeentelijk Kerngegeven / Overig 		
| Bezit 						| ? 						|																								
| Code 							| xsd:simpletype 			|																								
| Datum opname 					| prov:generatedAtTime 		|																								
| Definitie 					| skos:definition 			|																								
| Domein.FormeelPatroon 		| ? 						|																								
| Domein.Lengte 				| ? 						|																								
| Domein.Patroon 				| ? 						|																								
| Domein.Type 					| ? 						|																								
| Formeel patroon 				| ? 						|																								
| Gerelateerd objecttype 		| ? 						|																								
| Heeft 						| kkg:Gegevensgroep 		|																								
| Herkomst 						| skos:editorialNote 		|																								
| Herkomst definitie 			| dct:source 				| Voor objecttypen die deel uitmaken van een registratie is de definitie hieruit overgenomen. 	
| Identificerend 				| ? 						|																								
| Indicatie abstract object 	| ? 						|																								
| Indicatie afleidbaar 			| prov:wasDerivedFrom 		|																								
| Indicatie formele historie	| ? 						| Ja / Nee / Zie Groep 																			
| Indicatie materiële historie 	| ? 						| Ja / Nee / Zie Groep 																			
| Kardinaliteit 				| owl:cardinality 			|																								
| Kwaliteit 					| ldqd:semanticAccuracy 	|																								
| Locatie 						| dcat:accessURL 			|																								
| Mogelijk geen waarde 			| xsi:nil 					| Ja / Nee 																						
| Naam 							| skos:prefLabel 			|																								
| Patroon 						| ? 						|																								
| Populatie 					| ldqd:completeness 		|																								
| Specificatie formeel 			| ? 						|																								
| Specificatie tekst 			| ? 						|																								
| Toelichting 					| skos:scopeNote 			|																								
| Type aggregatie 				| ? 						|																								
| Uni-directioneel 				| rdf:object 				|																								
| Unieke aanduiding 			| skos:notation 			|																								
| Verwijst naar 				| skoslex:refersTo 			|																								
| Verwijst naar generieke 		| skos-thes:broaderGeneric 	|																								

In het geval een informatiemodel expliciet `skos:Concept` elementen onderkent naast `owl:Class`, dan zal `skos:definition` verbonden worden met het `skos:Concept` en kan `dc:source` gebruikt worden ipv `skos:editorialNote`.