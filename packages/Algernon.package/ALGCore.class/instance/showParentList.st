lists
showParentList
	(self searchStack size > 0) ifTrue: [  | parentSearch |
		self breadcrumbs pop.
		parentSearch := self searchStack pop.
		self clearTextField.
		self textField contents: parentSearch.
		self itemProvider items: self itemProvider defaultItems. "TODO"
		self updateItemListWith: parentSearch ].