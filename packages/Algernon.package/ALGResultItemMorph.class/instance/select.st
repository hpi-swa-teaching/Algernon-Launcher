event handling
select

	self isTitle ifTrue: [ ^ self ].
	
	self color: self class selectionFillStyle.
	
	self hasChildrenMorph show.
	self actionMorph show.