# Treeview
On most Catalogus pages, a treeview is present. This treeview is a representation of the **schemas** and **collections** in the dataset and their underlying **concepts**. This means that the toplevel elements in the tree are usually schemas with directly below them the collections. The concepts themselves are also ordered based on their predicates.

## Concept hierarchy
Concepts are ordered based on the following predicates:
- `thes:broaderGeneric`
- `thes:broaderPartitive`
- `thes:narrowerGeneric`
- `thes:narrowerPartitive`

The prefix `thes` is the namespace associated with the [SKOS-THES vocabulary](http://purl.org/iso25964/skos-thes).

The concepts are ordered from most generic to least generic (i.e. most specific). This means that:
- For the triples `A thes:broaderGeneric B` and `A thes:broaderPartitive B`, `B` will be the higher level element.
- For the triples `A thes:narrowerGeneric B` and `A thes:narrowerPartitive B`, `A` will be the higher level element.

## Design choices
The following design choices were made regarding the treeview:
- Concepts that have no relations to other concepts, or only *other* relations than the ones mentioned above, *are* shown in the tree, as toplevel elements (or directly below a collection if they are part of one). These concepts aren't really wanted, so if there are a lot of these 'single' concepts, then this should be a signal for the dataset administator that he should re-evaluate his collections.
- Concepts that are not part of a collection *are* shown in the tree.
  - If they are toplevel concepts, they will be shown as a base element in the tree, on the same level as the collections.
  - If they are not, i.e. they have a parent concept, they will be shown below that parent concept. In this case, there is no way to know, looking at the treeview, that this particular concept is not part of a collection.
- The predicates `thes:broaderGeneric` and `thes:narrowerGeneric` are considered each others inverse. Therefore the triples `A thes:broaderGeneric B` and `B thes:narrowerGeneric A` will be visualized in the same way in the tree. This means that there is no way to know, looking at the treeview, which of the two triples (or both) are in the dataset.
- The same goes for the predicates `thes:broaderPartitive` and `thes:narrowerPartitive`.
- The tree can show all concepts (and their corresponding collections) or only the concepts with a certain `rdf:type`.
