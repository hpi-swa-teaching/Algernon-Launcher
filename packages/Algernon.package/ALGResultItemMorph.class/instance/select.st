event handling
select

	self isTitle ifTrue: [ ^ self ].
	self selected: true.
	
	self color: self class selectionFillStyle.
	
	self hasChildrenMorph show.
	self actionMorph show.