drawing
drawActionsOn: aCanvas in: aRectangle with: aColor

	| referenceString origin corner rect offset |
	(self isSelected) ifFalse: [ ^ self ].
	offset := 1.5 * ALGIconFactory iconSize x.
	referenceString := StringMorph new contents: self item defaultAlgeraction actionVerb.
	origin := (self menuMorph right - referenceString width - (1.5*offset)) @ aRectangle origin y.
	corner := (origin x + referenceString width) @ aRectangle corner y.
	rect := Rectangle origin: origin corner: corner.
	self drawChildArrowOn: aCanvas with: offset.
	self drawActionNameOn: aCanvas in: rect with: aColor