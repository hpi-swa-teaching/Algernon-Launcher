lists
showParentList
	(self searchStack size > 0) ifTrue: [  | parentSearch |
		parentSearch := self searchStack pop.
		self clearTextField.
		self algertems: self defaultAlgertems.
		self updateItemListWith: parentSearch ].