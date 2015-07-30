initialization
reset

	self initializePosition.
	self itemProvider reset.
	self textField clear.
	self searchStack: nil.
	self itemProvider items: self itemProvider defaultItems.
	self breadcrumbs clear
	