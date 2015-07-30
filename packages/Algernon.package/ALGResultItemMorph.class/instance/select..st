event handling
select: evt

	(self isTitle) ifTrue: [ ^ self ].
	super select: evt.
	self color: self class selectedColor.
	self fixBounds