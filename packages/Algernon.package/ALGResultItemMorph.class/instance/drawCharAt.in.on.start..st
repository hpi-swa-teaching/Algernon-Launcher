drawing
drawCharAt: anIndex in: aRectangle on: aCanvas start: aCoordinate

	| refMorph originPoint cornerPoint rectBounds charString charColor |
	charString := String with: (self abbreviatedString at: anIndex).
	refMorph := StringMorph new font: self font; contents: charString.
	originPoint := aCoordinate @ aRectangle origin y.
	cornerPoint := (originPoint x + refMorph width) @ aRectangle corner y.
	rectBounds := Rectangle origin: originPoint corner: cornerPoint.
	charColor := self class matchingColor.
	((self item matchingPositions indexOf: anIndex) = 0)
		ifTrue: [ charColor := self class nonSelectedColor ].
	self draw: charString on: aCanvas in: rectBounds with: charColor.
	aRectangle setOrigin: originPoint corner: cornerPoint.
	^ cornerPoint x