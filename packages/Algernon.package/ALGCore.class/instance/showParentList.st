lists
showParentList
	(self searchStack size > 0) ifTrue: [  | parentSearch |
		parentSearch := self searchStack pop.
		self clearTextField.
		self textField contents: parentSearch.
		self algertems: self defaultAlgertems.
		self updateItemListWith: parentSearch ].