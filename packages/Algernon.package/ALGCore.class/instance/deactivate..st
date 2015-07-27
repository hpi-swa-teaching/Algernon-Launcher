visibility
deactivate: hand

	self active ifFalse: [^ self].

	self active: false.
	self stopStepping.
	self itemProvider items: self itemProvider defaultItems.
	self
		hideItemList;
		clearTextField;
		searchStack: nil;
		hide.
	World redraw.
	WorldState addDeferredUIMessage: [self dropFocus: hand]