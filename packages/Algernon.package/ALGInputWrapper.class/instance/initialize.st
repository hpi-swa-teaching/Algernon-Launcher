accessing
initialize

	super initialize.
	self scroller layoutPolicy: TableLayout new.
	"self scroller addMorph: self inputfield."
	self hScrollBarPolicy: #always.
	self color: (Color red).