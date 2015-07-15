drawing
drawOn: aCanvas
	"Parent rendering method does not provide template methods unfortunately."
	self draw.
	super drawOn: aCanvas.