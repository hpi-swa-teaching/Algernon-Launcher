event handling
select

	self isTitle ifTrue: [ ^ self ].
	"super select: evt."
	self color: self class selectionFillStyle.
	self fixBounds.
	self selected: true.