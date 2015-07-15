drawing
draw
	(self isSelected)
		ifTrue: [ super color: self class selectedColor negated ]
		ifFalse: [ super color: self class nonSelectedColor ]