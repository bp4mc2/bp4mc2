# Treeview
On most Catalogus pages, a treeview is present. This treeview is a representation of the **collections** in the dataset and their underlying **concepts**.

The following design choices were made regarding the treeview:
- Concepts that are not part of a collection are shown in the tree.
-- If they are toplevel concepts, they will be shown as a base element in the tree, on the same level as collections.
-- If they are not, i.e. they have a parent concept, they will be shown below that parent concept. In this case, there is no way to know, looking at the treeview, that this particular concept is not part of a collection.
