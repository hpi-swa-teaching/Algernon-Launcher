accessing
selectedListItem
	self selectedItem ifNil: [ ^ ALGNullItem new ].
	self selectedItem isTitle ifTrue: [ ^ ALGNullItem new ].
	^ self selectedItem item