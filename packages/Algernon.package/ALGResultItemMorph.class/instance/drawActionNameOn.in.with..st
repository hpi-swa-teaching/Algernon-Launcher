drawing
drawActionNameOn: aCanvas in: aRectangle with: aColor

	aCanvas
		drawString: self item defaultAlgeraction name
		in: aRectangle
		font: self fontToUse
		color: aColor