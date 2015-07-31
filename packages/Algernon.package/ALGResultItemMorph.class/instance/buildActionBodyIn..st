drawing
buildActionBodyIn: aRectangle

	| origin corner |
	origin := (self menuMorph right - self referenceString width - (1.5 * self offset)) @ aRectangle origin y.
	corner := (origin x + self referenceString width) @ aRectangle corner y.
	^ Rectangle origin: origin corner: corner