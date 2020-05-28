initialization
initializeItemBounds
	"self extent: self menuMorph width - (self menuMorph borderWidth *2 ) @ self class itemHeight"
	self width: self menuMorph width - (self menuMorph borderWidth *2 ).
	self vResizing: #shrinkWrap.