event handling
select: evt
	(self isTitle) ifTrue: [ ^ self ].
	super select: evt.
	self color: self class selectedColor.
	(self item algertype hasChildren)
		ifTrue: [ self icon: (ALGIconFactory getInstance loadIconFor: #HasChildren) ].
	self fixBounds.