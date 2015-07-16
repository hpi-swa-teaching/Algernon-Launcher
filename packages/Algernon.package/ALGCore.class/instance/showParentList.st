lists
showParentList
	(self searchStack size > 0) ifTrue: [  | parentSearch |
		self breadcrumbs pop.
		parentSearch := self searchStack pop.
		self clearTextField.
		self algertems: self defaultAlgertems.
		self updateItemListWith: parentSearch ].