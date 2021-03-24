accessing
selectedListItem
	self selectedItem ifNil: [ ^ ALGNullItem new ].
	^ self selectedItem item