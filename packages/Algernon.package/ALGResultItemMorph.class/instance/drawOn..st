drawing
drawOn: aCanvas 

	| stringColor stringBounds |
	stringColor := self drawSelectedOn: aCanvas.
	stringBounds := self drawIconOn: aCanvas in: self bounds.
	stringBounds := stringBounds top: stringBounds top + stringBounds bottom - self fontToUse height // 2.
	(self isTitle)
		ifTrue: [ self drawTitleOn: aCanvas in: stringBounds ]
		ifFalse: [ self drawActionsOn: aCanvas in: stringBounds with: stringColor;
				 	drawMatchesOn: aCanvas in: stringBounds ]