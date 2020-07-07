testing
testClosingAlgernonClosesBackground
	self algerInstance activate.
	self algerInstance deactivate.
	self deny: (self algerInstance background visible).