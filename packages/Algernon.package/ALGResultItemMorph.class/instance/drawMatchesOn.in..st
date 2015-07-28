drawing
drawMatchesOn: aCanvas in: aRectangle

	| startX |
	startX := aRectangle origin x.
	(1 to: self contents size) do: [ :i |
		| refMorph originPoint cornerPoint rectBounds charWidth charString charColor |
		charString := String with: (contents at: i).
		refMorph := StringMorph new font: self font; contents: charString.
		charWidth := refMorph width.
		originPoint := startX @ aRectangle origin y.
		cornerPoint := (originPoint x + charWidth) @ aRectangle corner y.
		rectBounds := Rectangle origin: originPoint corner: cornerPoint.
		charColor := self class matchingColor.
		((self item matchingPositions indexOf: i) = 0)
				ifTrue: [ charColor := self class nonSelectedColor ].
		self draw: charString on: aCanvas in: rectBounds with: charColor.
		aRectangle setOrigin: originPoint corner: cornerPoint.
		startX := cornerPoint x ]