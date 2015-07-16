event handling
select: evt
	super select: evt.
	self color: self class selectedColor negated.
	(self item algertype hasChildren)
		ifTrue: [ self icon: (ALGIconFactory getInstance loadIconFor: #HasChildren) ].
	self fixBounds.