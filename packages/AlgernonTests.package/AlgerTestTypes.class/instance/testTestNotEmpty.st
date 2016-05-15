testing
testTestNotEmpty

	| tests |
	tests := ALGTestType algertemList.
	self deny: tests isEmpty
	