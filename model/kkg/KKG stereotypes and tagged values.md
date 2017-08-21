# KKG stereotypes en tagged values

## Stereotypes
Onderstaande tabel geeft de KKG stereotypes weer, inclusief de UML metaklasse waar het stereotype gebruikt kan worden.

| Stereotype | UML element | Betekenis
|------------|-------------|-------------
| Objecttype | Class |
| Gegevensgroeptype | Class |
| Gegevensgroep | Association |
| Relatiesoort | Association |
| Externe koppeling | Association |

Stereotypes worden vertaald naar een `owl:ObjectProperty` met de URI `uml:stereotype` waarbij het triple-subject van het type `sh:NodeShape` of `sh:PropertyShape` is, en het triple-object van het type `skos:Concept` is. Elke stereotype wordt gedefinieerd als een `skos:Concept` is de `skos:ConceptScheme` KKG.

## Tagged values
Onderstaande tabel geeft alle KKG tagged values weer, inclusief de mapping naar een `rdf:Property` uit een standaard Linked Data vocabulaire. Indien er geen vocabulaire voorhanden is (bijvoorbeeld omdat de tagged value uniek is voor KKG), dan wordt verwezen naar de kkg vocabulaire dmv de namespace prefix `kkgtag`.

| Tagged value type (key) | RDF property | Betekenis
| Naam | skos:prefLabel |
| Herkomst | dc:source |
| Definitie | skos:definition |
| Herkomst definitie | skos:editorialNote or dc:source |
| Datum opname | dct:created |
| Unieke aanduiding | sh:notation |

In het geval een informatiemodel expliciet `skos:Concept` elementen onderkent naast `owl:Class`, dan zal `skos:definition` verbonden worden met het `skos:Concept` en kan `dc:source` gebruikt worden ipv `skos:editorialNote`.