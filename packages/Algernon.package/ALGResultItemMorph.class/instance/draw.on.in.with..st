drawing
draw: aString on: aCanvas in: aRectangle with: aColor

	aCanvas
		drawString: aString
		in: aRectangle
		font: self fontToUse
		color: aColor