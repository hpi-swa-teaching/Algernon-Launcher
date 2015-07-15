accessing
selectedListItem
	| item |
	self selectedItem ifNil: [ ^ nil ].
	item := self selectedItem item.
	^ item.