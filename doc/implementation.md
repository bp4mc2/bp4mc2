# Implementation of versioning
This document describes the way versioning is implemented in the Catalogus.

## Mastergraph and versiongraphs
The main idea behind the way versioning is implemented is to work with one **mastergraph** and several **versiongraphs** per dataset. The mastergraph contains all versioned concepts that are currently in the dataset or once part of the dataset. It also contains a link to the versiongraph in which all information of the latest version of that concept can be found. A versiongraph contains all information of the concept(s) that were changed in the new version of the dataset.

A concept is considered changed when there has been a change in one of the triples with that concept as subject. That can either be a change in the predicate or object, a newly added triple or a deleted triple.

### Contents of the mastergraph
Per versioned concept, the mastergraph contains three triples:
- The type of the concept, denoted by the predicate `rdf:type`
- The link to the versiongraph which contains the most recent version of the concept, denoted by the predicate `rdfs:isDefinedBy`
- A signature, which is necessary to determine whether a concept has changed
Additionaly, the mastergraph includes:
- Some metadata
- A list of all versiongraphs, denoted by the predicate `dc:isVersionOf`

### Contents of the versiongraph
Each versiongraph contains the following:
- Some metadata:
  - The date and time the version was created, denoted by the predicate `prov:generatedAtTime`
  - The prov:Activity associated with the creation of the version, denoted by the predicate `prov:wasGeneratedBy`
  - The prov:Agent associated with the prov:Activity, denoted by the predicate `prov:wasAssociatedBy`
- All information of the concepts that were changed in this version of the dataset. Here, 'all information' means all triples that have the concept as subject.
- If this version of the concept is no longer the most recent version, i.e. it was updated (again) in a later versiongraph, then the versiongraph also contains the date and time this version of the concept stopped being the most recent one, denoted by the predicate `prov:invalidatedAtTime`

## Algorithm when updating a dataset
When updating a dataset, the following algorithm is used to properly update the mastergraph and create the new versiongraph:

1. Calculate the signature of all concepts in the new version of the dataset. This is necessary to determine which concepts have changed. It is done by generating a hash based on a concatenation of all predicates and objects of a concept.
2. Delete the signature of all *deleted* concepts from the mastergraph. This is necessary to ensure that, should the exact same concept be re-added to the dataset at a later time, that will be considered a new version of the concept.
3. Add all triples of all *changed* concepts to the new versiongraph. This can be done by comparing the calculated signature in step 1 to the signature stored in the mastergraph, and then adding only those concepts that have a changed signature to the new versiongraph.
4. Update the signature and the link to the most recent version in the mastergraph, i.e. delete the old signature and the `rdfs:isDefinedBy` triple and replace them with the new values.
