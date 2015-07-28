updating
showParentList

	(self searchStack size > 0) ifTrue: [  | parentSearch |
		self breadcrumbs pop.
		parentSearch := self searchStack pop.
		self textField clear.
		self textField contents: parentSearch.
		self itemProvider items: self itemProvider defaultItems. "TODO"
		self updateItemListWith: parentSearch ]