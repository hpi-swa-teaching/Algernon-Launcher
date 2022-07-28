algertem lists
algertemListAsChildrenWith: aProject
	
	| items |
	
	items := OrderedCollection new.
	self subclasses do: [ :each | items addAll: (each getItemsFor: aProject asChildren: true) ].
	
	^ items