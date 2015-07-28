drawing
drawTitleOn: aCanvas in: aRectangle

	(self isTitle) ifFalse: [ ^ self ].
	aCanvas
		drawString: self contents
		in: aRectangle
		font: self fontToUse
		color: self class titleColor