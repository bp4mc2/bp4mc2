# SKOS legal extension (skos-lex)
The Catalog is intended to be used as a taxonomy of Concepts, originating in Law and governmental decrees.
In order to represent the way that Concepts and actual rules of Law are related to one another, the [SKOS legal extension](http://bp4mc2.org/def/skos-lex)
has been created. The extension defines the classes and properties to declare legal constructs as skos concepts. Relations between concepts, rules and laws
can be described on the bases of this vocabulairy, but the actual semantic content of a legal relationship is simplified to either refersTo (to indicate a rule  
referring to an Act) or affects (to indicate that an Act is affected by a Norm). 

## Classes
### [Act](http://bp4mc2.org/def/skos-lex#Act)
*An Act is a legal construc representing a set of activities, performed by an Actor and with respect to some Object.*
An Act is a subclass of a skos:Concept.
### [Norm](http://bp4mc2.org/def/skos-lex#Norm) 
*A Norm affects an Act. It implies what 'ought' or 'should not' be done with regard to an Act. A Norm represents the set of rules that apply to an Act.*
A Norm is a subclass of a skos:Concept.
### [Actor](http://bp4mc2.org/def/skos-lex#Actor)
*An Actor is some entity (individual, group or organisation) that performs some Act.*
An Actor is a subclass of a skos:Concept.
### [Agent](http://bp4mc2.org/def/skos-lex#Agent)
*An Agent is some entity (individual, group or organisation) involved in some Act, without actually performing the Act.*
An Agent is a subclass of a skos:Concept.
### [Object](http://bp4mc2.org/def/skos-lex#(Object)
*An Object is some thing (not an Actor) that is created, used or changed during some Act.*
An Object is a subclass of a skos:Concept.
## Properties
### [actor](http://bp4mc2.org/def/skos-lex#actor)
*actor relates an Act with the Actor that performs the act.*
### [affects](http://bp4mc2.org/def/skos-lex#affects)
*affects relates a Norm with the Act that is affected by the Norm. Such an Act is restricted by the rules identified by the Norm.*
###[agent](http://bp4mc2.org/def/skos-lex#agent)
*agent relates an Act with the Agent involved in the Act.*
###[object](http://bp4mc2.org/def/skos-lex#object)
*object relates an Act with the Object that is created, changed or used during the Act.*
###[refersTo](http://bp4mc2.org/def/skos-lex#refersTo)
*refersTo relates a Norm with the Act that is refered by the Norm. Such an Act has some relation with the Norm, without further specification. It might be effected by the norm, but could also be a precondition or simply mentioned in the rules.*

 