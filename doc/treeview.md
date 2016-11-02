# Treeview
On most Catalogus pages, a treeview is present. This treeview is a representation of the **collections** in the dataset and their underlying **concepts**. This means that the toplevel elements in the tree are usually collections. The concepts themselves are also ordered based on their predicates.

## Concept hierarchy
Concepts are ordered based on the following predicates:
- `thes:broaderGeneric`
- `thes:broaderPartitive`
- `thes:narrowerGeneric`
- `thes:narrowerPartitive`

The prefix `thes` is the namespace associated with the [SKOS-THES vocabulary](http://purl.org/iso25964/skos-thes).

## Design choices
The following design choices were made regarding the treeview:
- Concepts that are not part of a collection *are* shown in the tree.
  - If they are toplevel concepts, they will be shown as a base element in the tree, on the same level as the collections.
  - If they are not, i.e. they have a parent concept, they will be shown below that parent concept. In this case, there is no way to know, looking at the treeview, that this particular concept is not part of a collection.
- The predicates `thes:broaderGeneric` and `thes:narrowerGeneric` are considered each others inverse. Therefore the triples `A thes:broaderGeneric B` and `B thes:narrowerGeneric A` will be visualized in the same way in the tree.
- The same goes for the predicates `thes:broaderPartitive` and `thes:narrowerPartitive`.
- The tree can show all concepts (and their corresponding collections) or only the concepts with a certain `rdf:type`.
