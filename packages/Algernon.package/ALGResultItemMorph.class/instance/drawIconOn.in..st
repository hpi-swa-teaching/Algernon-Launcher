drawing
drawIconOn: aCanvas in: aRectangle

	| icon |
	self hasIcon ifFalse: [ ^ aRectangle ].
	icon := self iconForm.
	aCanvas 
		translucentImage: icon 
		at: aRectangle left @ (self top + (self height - icon height // 2)).
	^ aRectangle left: aRectangle left + icon width + 2