running
setUp
	| testAlgertem1 testAlgertem2 |
	super setUp.
	algertemList := OrderedCollection new.
	categorizer := AlgertypeCategorizer new.
	testAlgertem1 := Algertem withAlgertype: (CategoryAlgertype new).
	testAlgertem2 := Algertem withAlgertype: (CategoryAlgertype new).
	algertemList add: testAlgertem1.
	algertemList add: testAlgertem2.
	categories := categorizer categorize: algertemList.
	^ nil