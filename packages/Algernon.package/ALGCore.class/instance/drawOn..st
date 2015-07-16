visibility
drawOn: aCanvas

	| theCanvas | 
	theCanvas := aCanvas asAlphaBlendingCanvas: 1.0.
	super drawOn: theCanvas.