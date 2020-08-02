event handling
rejectsEvent: evt
	"Without this the text submorphs will change the cursor"
	^ evt isMouseMove
	