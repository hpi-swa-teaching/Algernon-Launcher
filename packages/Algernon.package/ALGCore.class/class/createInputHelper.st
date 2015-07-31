initialization
createInputHelper

	^ RectangleMorph new
		color: Color white;
		extent: (self class defaultWidth - 10) @ 40;
		center: self center;
		borderWidth: 0