helpers
deleteCategory
	(Smalltalk organization listAtCategoryNamed: self categoryNameForTemporaryClasses) isEmpty
		ifTrue: [Smalltalk organization removeCategory: self categoryNameForTemporaryClasses]