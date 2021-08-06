accessing
ensureVisible: aMorph
	"disable mouse over until user moves mouse"
	self shouldItemsHandleMouseOver: false.
	aMorph ifNotNil: [self scrollToShow: aMorph bounds]