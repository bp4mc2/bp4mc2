# Implementation of versioning
This document describes the way versioning is implemented in the Catalogus.

## Mastergraph and versiongraphs
The main idea behind the way versioning is implemented is to work with one **mastergraph** and several **versiongraphs** per dataset. The mastergraph contains all versioned concepts in the dataset and a link to the versiongraph in which all information of the latest version of that concept can be found. A versiongraph contains all information of the concept(s) that were changed in the new version of the dataset.

### Contents of the mastergraph
Per versioned concept, the mastergraph contains three triples:
- The type of the concept, denoted by the predicate `rdf:type`
- The link to the versiongraph which contains the most recent version of the concept, denoted by the predicate `rdfs:isDefinedBy`
- A signature, which is necessary to determine whether a concept has changed

### Contents of the versiongraph
Each versiongraph contains the following:
- Some metadata:
  - The date and time the version was created, denoted by the predicate `prov:generatedAtTime`
  - The prov:Activity associated with the creation of the version, denoted by the predicate `prov:wasAssociatedWith`
  - 
