event handling
positionAt: aPoint relativeTo: aMenuItem inWorld: aWorld 
	self fullBounds.
	self position: aPoint - (2 @ 8).
	self position: self position