drawing
drawActionsOn: aCanvas in: aRectangle with: aColor

	| actionBody |
	(self isSelected) ifFalse: [ ^ self ].

	actionBody := self buildActionBodyIn: aRectangle.

	self drawChildArrowOn: aCanvas with: self offset.
	self drawActionNameOn: aCanvas in: actionBody with: aColor