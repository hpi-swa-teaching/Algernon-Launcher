accessing
ensureVisible: aMorph
	"disable mouse over until user moves mouse"
	self shouldItemsHandleMouseOver: false.
	self scrollToShow: aMorph bounds.