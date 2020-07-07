testing
testClosingAlgernonClosesBackground
	self algInstance activate.
	self algInstance deactivate.
	self deny: (self algInstance background visible).