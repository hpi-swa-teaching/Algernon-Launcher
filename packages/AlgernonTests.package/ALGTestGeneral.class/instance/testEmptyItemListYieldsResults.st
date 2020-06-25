testing
testEmptyItemListYieldsResults
	self runQuery: String empty.
	self deny: self items isEmpty.
