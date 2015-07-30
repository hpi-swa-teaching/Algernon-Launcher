drawing
drawOn: aCanvas

	super drawOn: (aCanvas asAlphaBlendingCanvas: self class backgroundAlpha)