drawing
drawSelectedOn: aCanvas

	(self isSelected & self isEnabled)
		ifTrue: [ aCanvas fillRectangle: self bounds fillStyle: self selectionFillStyle ].
	^ self color