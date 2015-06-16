visibility
deactivate: hand

	self active ifFalse: [^ self].

	self active: false.
	algertems := self defaultAlgertems.
	self
		hideItemList;
		clearTextField;
		currentAlgertem: nil;
		hide.
	World redraw.
	WorldState addDeferredUIMessage: [self dropFocus: hand]