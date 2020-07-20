initialization
mouseMove: evt
	(self itemList bounds containsPoint: evt position)
		ifTrue: [self itemList mouseMove: evt]
		ifFalse: [super  mouseMove: evt]