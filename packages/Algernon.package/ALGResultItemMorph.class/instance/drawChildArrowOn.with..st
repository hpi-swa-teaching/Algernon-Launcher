drawing
drawChildArrowOn: aCanvas with: anOffset

	| childIcon |
	(self item algertype hasChildren) ifFalse: [ ^ self ].
	childIcon := ((ALGIconFactory getInstance loadIconFor: #HasChildren)
		scaledToSize: ALGIconFactory iconSize).
	aCanvas
		translucentImage: childIcon
		at: ((self menuMorph right - anOffset) @ (self top + ((self height - childIcon height) / 2)))