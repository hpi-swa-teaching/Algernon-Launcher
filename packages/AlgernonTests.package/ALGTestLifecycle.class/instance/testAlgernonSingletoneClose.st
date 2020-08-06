testing
testAlgernonSingletoneClose
	self algInstance activate.
	Algernon close.
	self deny: self algInstance active.