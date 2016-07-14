accessing
selectedListItem
	self hasItems ifFalse: [ ^ ALGNullItem new ].
	^ self selectedItem item