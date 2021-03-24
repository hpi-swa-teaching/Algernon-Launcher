event handling
select
	self isTitle ifTrue: [ ^ self ].
	
	self color: self class selectionFillStyle.
	
	self childrenIndicatorMorph show.
	self actionMorph show.