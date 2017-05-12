drawing
drawSelectedOn: aCanvas

	(self isSelected and: [self isEnabled])
		ifTrue: [ aCanvas fillRectangle: self bounds fillStyle: self selectionFillStyle ].
	^ self color