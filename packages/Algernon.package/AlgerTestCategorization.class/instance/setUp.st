running
setUp
	| testAlgertem1 testAlgertem2 |
	super setUp.
	algertemList := OrderedCollection new.
	categorizer := ALGTypeCategorizer new.
	testAlgertem1 := ALGItem withAlgertype: (ALGCategoryType new).
	testAlgertem2 := ALGItem withAlgertype: (ALGCategoryType new).
	algertemList add: testAlgertem1.
	algertemList add: testAlgertem2.
	categories := categorizer categorize: algertemList.
	^ nil