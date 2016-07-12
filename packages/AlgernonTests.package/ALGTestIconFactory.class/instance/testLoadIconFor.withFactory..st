testing
testLoadIconFor: aSymbol withFactory: anIconFactory

	| icon |
	icon := anIconFactory loadIconFor: aSymbol.
	self assert: icon notNil.
	self assert: icon width > 0.
	self assert: icon height > 0.
	self assert: icon depth > 0.
	self assert: (icon bits isKindOf: Bitmap)