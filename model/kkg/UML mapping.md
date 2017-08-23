# UML Mapping

Mapping van standaard UML elementen vind op de volgende wijze plaats:

UML Element | RDF/OWL element | Shacl element
------------|-----------------|---------------
UML Association | owl:ObjectProperty | 
UML Association en UML Class | owl:ObjectProperty en owl:Class |
UML Class | owl:Class | sh:NodeShape |
UML Constraint | iso19150-2:constraint | 
UML Datatype | rdfs:Datatype | 
UML Datatype | owl:DatatypeProperty | 
UML Enumeration | rdfs:Datatype | 
UML EnumerationLiteral | owl:oneOf + rdf:List | 
UML Generalization | rdfs:subClassOf | 
UML Package | owl:Ontology | 
UML Primitive Type | owl:DatatypeProperty | 
UML Property / Attribute | owl:DatatypeProperty |
UML Property / Attribute | owl:ObjectProperty |
