system
delete
	super delete.
	self unregisterFromSystem.
	self background abandon.
	self breadcrumbs abandon.
	self textField cleanup.
	self itemProvider
		ifNotNil: [ self itemProvider cleanUp. ].
	self itemList abandon.