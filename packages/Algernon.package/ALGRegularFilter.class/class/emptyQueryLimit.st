help
emptyQueryLimit
	"the best behavior for an empty query is to return all items,
	that's to expensive, because we have almost 100'000 of them,
	therfore we cut of after a reasonable number"
	^ 1500