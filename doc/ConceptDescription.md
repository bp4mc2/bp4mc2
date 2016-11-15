#Digitaal Stelsel Omgevingswet (DSO)
With the introduction of the "Omgevingswet" the Dutch cabinet would like to simplify rules and regulations regarding environmental law: ease-of-use, faster and better decisions and less research expenses.
In order to realise these goals it is necessary to improve the ways the law is digitaly supported.

The Catalog for the "Digitaal Stelstel Omgevingswet" is intended as an entry into the system of law in which, laws, rules, concepts and information services are linked to one another. 
It is the primary source of information on which data/information is available within the system of law and the semantics gouverning this data. With the information from within the Catalog users can easily incorporate data/information from the DSO into their
own workflows and processes. 

#Basic description of how we register a skos:Concept
Characteristic   |   Vocabulary   |   URI   
---   |   ---   |   ---
**Concept** | skos:Concept | [http://www.w3.or/2004/02/skos/core#Concept](http://www.w3.or/2004/02/skos/core#Concept)
Name | skos:prefLabel | [http://www.w3.or/2004/02/skos/core#prefLabel](http://www.w3.or/2004/02/skos/core#prefLabel)
Domain | skos:inScheme | [http://www.w3.or/2004/02/skos/core#inScheme](http://www.w3.or/2004/02/skos/core#inScheme)
Definition | skos:definition | [http://www.w3.or/2004/02/skos/core#definition](http://www.w3.or/2004/02/skos/core#definition)
Comment | skos:comment | [http://www.w3.or/2004/02/skos/core#comment](http://www.w3.or/2004/02/skos/core#comment)
Explanation | skos:scopeNote | [http://www.w3.or/2004/02/skos/core#scopeNote](http://www.w3.or/2004/02/skos/core#scopeNote)
Synonym | skos:altLabel | [http://www.w3.or/2004/02/skos/core#altLabel](http://www.w3.or/2004/02/skos/core#altLabel)
Source | dcmi-terms:source | [http://dublincore.org/documents/dcmi-terms/#source](http://dublincore.org/documents/dcmi-terms/#source)
Is a specialization of | skos-thes:broaderGeneric | [http://purl.org/iso25964/skos-thes#broaderGeneric](http://purl.org/iso25964/skos-thes#broaderGeneric)
Is a generalization of | skos-thes:narrowerGeneric | [http://purl.org/iso25964/skos-thes#narrowerGeneric](http://purl.org/iso25964/skos-thes#narrowerGeneric)
Is part of | skos-thes:broaderPartitive | [http://purl.org/iso25964/skos-thes#broaderPartitive](http://purl.org/iso25964/skos-thes#broaderPartitive)
Is mode up of | skos-thes"narrowerPartitive | [http://purl.org/iso25964/skos-thes#narrowerPartitive](http://purl.org/iso25964/skos-thes#narrowerPartitive)
Refers to | skos:semanticRelation | [http://www.w3.or/2004/02/skos/core#semanticRelation](http://www.w3.or/2004/02/skos/core#semanticRelation)
<- CLASS is instance of | dcmi-terms:subject | [http://dublincore.org/documents/dcmi-terms/#subject](http://dublincore.org/documents/dcmi-terms/#subject)
--- | --- | ---
**Activity** | skos-lex:Act | [http://bp4mc2.org/def/skos-lex#Act](http://bp4mc2.org/def/skos-lex#Act)
Is performed by | skos-lex:actor | [http://bp4mc2.org/def/skos-lex#actor](http://bp4mc2.org/def/skos-lex#actor)
Is performed on | skos-lex:object | [http://bp4mc2.org/def/skos-lex#object](http://bp4mc2.org/def/skos-lex#object)

**Norm** | skos-lex:Norm | [http://bp4mc2.org/def/skos-lex#Norm](http://bp4mc2.org/def/skos-lex#Norm)
Affects | skos-lex:affects | [http://bp4mc2.org/def/skos-lex#affects](http://bp4mc2.org/def/skos-lex#affects)
Refers to | skos-lex:refersTo | [http://bp4mc2.org/def/skos-lex#refersTo](http://bp4mc2.org/def/skos-lex#refersTo)
--- | --- | ---
Closely matches | skos:closeMatch | [http://www.w3.org/TR/skos-reference/#closeMatch](http://www.w3.org/TR/skos-reference/#closeMatch)
Exactly matches | skos:exactMatch | [http://www.w3.org/TR/skos-reference/#exactMatch](http://www.w3.org/TR/skos-reference/#exactMatch)
See also (in a different scheme) | skos:relatedMatch | [http://www.w3.org/TR/skos-reference/#relatedMatch](http://www.w3.org/TR/skos-reference/#relatedMatch)
Broader Match (in a different scheme) | skos:broadMatch | [http://www.w3.org/TR/skos-reference/#broadMatch](http://www.w3.org/TR/skos-reference/#broadMatch)
Narrower Match (in a different scheme) | skos:narrowMatch | [http://www.w3.org/TR/skos-reference/#narrowMatch](http://www.w3.org/TR/skos-reference/#narrowMatch)



