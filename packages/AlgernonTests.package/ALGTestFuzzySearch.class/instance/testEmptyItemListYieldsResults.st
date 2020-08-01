testing search edge cases
testEmptyItemListYieldsResults
	self runQuery: String empty.
	self deny: self items isEmpty.
