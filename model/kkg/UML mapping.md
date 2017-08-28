# UML Mapping

Mapping van standaard UML elementen vind op de volgende wijze plaats:

UML Element 					| RDF/OWL element 					| Shacl element
------------					|-----------------					|---------------
UML Association					| owl:ObjectProperty 				| sh:NodeShape
UML Association en UML Class	| owl:ObjectProperty en owl:Class 	| sh:NodeShape
UML Class 						| owl:Class 						| sh:NodeShape
UML Constraint 					| iso19150-2:constraint 			| sh:NodeShape
UML Datatype 					| rdfs:Datatype 					| sh:NodeShape
UML Datatype 					| owl:DatatypeProperty 				| sh:NodeShape
UML Enumeration 				| rdfs:Datatype 					| sh:NodeShape
UML EnumerationLiteral 			| owl:oneOf + rdf:List 				| sh:NodeShape
UML Generalization 				| rdfs:subClassOf 					| sh:NodeShape
UML Package 					| owl:Ontology 						|
UML Primitive Type 				| owl:DatatypeProperty 				| sh:NodeShape
UML Property / Attribute 		| owl:DatatypeProperty 				| sh:NodeShape
UML Property / Attribute 		| owl:ObjectProperty 				| sh:NodeShape
