# Implementation of versioning
This document describes the way versioning of concepts is implemented in the Catalogus. The technical implementation of versioning of data will likely occur in the same manner. For other resources, such as texts, images and models, the implementation will likely slightly differ.

## Mastergraph and versiongraphs
The main idea behind the way versioning is implemented is to work with one **mastergraph** and several **versiongraphs** per dataset. The mastergraph contains all versioned concepts that are currently in the dataset or once part of the dataset. It also contains a link to the versiongraph in which all information of the latest version of that concept can be found. A versiongraph contains all information of the concept(s) that were changed in the new version of the dataset.

A concept is considered changed when there has been a change in one of the triples with that concept as subject. That can either be a change in the predicate or object, a newly added triple or a deleted triple.

As an example, consider a situation in which there initially are three concepts in the world: `A`, `C` and `D`. When they are uploaded to the Catalogus, all information about those three concepts is placed in a versiongraph, e.g. `Versiongraph 1`. The three concepts are also added to the mastergraph, along with a link to the versiongraph in which the most recent version of those concepts can be found, which is `Versiongraph 1`. See the picture below.

![Mastergraph and versiongraph 1 after initial upload](https://github.com/bp4mc2/bp4mc2/blob/master/doc/images/mv1.png)

At a certain point in time, concept `C` is replaced by concept `B`. As soon as this change is uploaded to the Catalogus, the effect is that concept `B` is added to a new versiongraph (`Versiongraph 2`) and that concept `C` gets deleted. Effectively, this deletion is done by adding a triple to `Versiongraph 1` which denotes that the version in that graph is no longer up to date (and since when). In the picture below, this is depicted by writing concept `C` in red. Notice that `C` remains in the mastergraph with a link to `Versiongraph 1`.

![Mastergraph and versiongraphs 1 and 2](https://github.com/bp4mc2/bp4mc2/blob/master/doc/images/mv2.png)

Finally, something changes about concept `A`, changing it to a new version of the concept, denoted by `A'`. As soon as this change is uploaded to the Catalogus, all information about the changed concept `A'` is added to the new `Versiongraph 3`. Furthermore, the link in the mastergraph is updated, so that it no longer points to `Versiongraph 1`, where the previous version of `A` can still be found, but to `Versiongraph 3`, which now has the most recent version. Finally, a triple is added to `Versiongraph 1` to denote that the version of concept `A` in that graph is no longer up to date (and since when). See the picture below.

![Mastergraph and versiongraphs 1-3](https://github.com/bp4mc2/bp4mc2/blob/master/doc/images/mv3.png)

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
4. Add a triple to the old versiongraph of the *deleted* and *changed* concepts to denote that the version of those concepts is no longer up to date.
5. Update the signature and the link to the most recent version in the mastergraph, i.e. delete the old signature and the `rdfs:isDefinedBy` triple and replace them with the new values.
