initialization
initializeWindow

	self
		extent: self class defaultWidth @ self class defaultHeight;
		center: self class defaultPosition;
		borderWidth: 5;
		borderColor: Color lightGray.