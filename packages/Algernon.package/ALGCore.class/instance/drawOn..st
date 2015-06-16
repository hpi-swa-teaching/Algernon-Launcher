visibility
drawOn: aCanvas

	| theCanvas | 
	theCanvas := aCanvas asAlphaBlendingCanvas: 0.6.
	super drawOn: theCanvas.