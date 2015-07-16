drawing
drawOn: aCanvas 
	"Override rendering to highlight matching characters."
	| stringColor stringBounds |
	isSelected & isEnabled
		ifTrue: [
			aCanvas fillRectangle: self bounds fillStyle: self selectionFillStyle.
			stringColor := color ]
		ifFalse: [ stringColor := color ].
	stringBounds := bounds.
	self hasIcon ifTrue: [
		| iconForm | 
		iconForm := self iconForm.
		aCanvas 
			translucentImage: iconForm 
			at: stringBounds left @ (self top + (self height - iconForm height // 2)).
		stringBounds := stringBounds left: stringBounds left + iconForm width + 2 ].
	stringBounds := stringBounds top: stringBounds top + stringBounds bottom - self fontToUse height // 2.
	(self isTitle)
		ifTrue: [ aCanvas
				drawString: contents
				in: stringBounds
				font: self fontToUse
				color: self class titleColor ].
	(self item) ifNotNil: [ | startX |
		startX := stringBounds origin x.
		(self isSelected)
			ifTrue: [ | referenceString origin corner rect offset childIcon |
				offset := 1.5 * ALGIconFactory iconSize x.
				referenceString := StringMorph new contents: self item defaultAlgeraction actionVerb.
				origin := (self menuMorph right - referenceString width - (1.5*offset)) @ stringBounds origin y.
				corner := (origin x + referenceString width) @ stringBounds corner y.
				rect := Rectangle origin: origin corner: corner.
				(self item algertype hasChildren) ifTrue: [
					childIcon := ((ALGIconFactory getInstance loadIconFor: #HasChildren) scaledToSize: ALGIconFactory iconSize).
					aCanvas
						translucentImage: childIcon
						at: ((self menuMorph right - offset) @ (self top + ((self height - childIcon height) / 2))) ].
				aCanvas
					drawString: self item defaultAlgeraction name
					in: rect
					font: self fontToUse
					color: stringColor ].
		(1 to: contents size) do: [ :i | | referenceString originPoint cornerPoint rectBounds charWidth |
			referenceString := StringMorph new
				font: self font;
				contents: (String with: (contents at: i)).
			charWidth := referenceString width.
			originPoint := startX @ stringBounds origin y.
			cornerPoint := (originPoint x + charWidth) @ stringBounds corner y.
			rectBounds := Rectangle origin: originPoint corner: cornerPoint.
			((self item matchingPositions indexOf: i) = 0)
				ifFalse: [ stringColor := self class matchingColor ]
				ifTrue: [ stringColor := self class nonSelectedColor ].
			aCanvas
				drawString: (String with: (contents at: i))
				in: rectBounds
				font: self fontToUse
				color: stringColor.
			stringBounds setOrigin: originPoint corner: cornerPoint.
			startX := cornerPoint x. ] ].