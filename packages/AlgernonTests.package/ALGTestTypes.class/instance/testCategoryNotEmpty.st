testing category type
testCategoryNotEmpty

	| categories |

	categories := ALGCategoryType algertemList.
	self deny: categories isEmpty