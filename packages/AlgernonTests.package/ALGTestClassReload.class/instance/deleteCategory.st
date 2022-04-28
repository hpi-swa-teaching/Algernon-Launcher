helpers
deleteCategory
	(Smalltalk organization listAtCategoryNamed: self categoryNameForTemporaryClasses)
		ifEmpty: [Smalltalk organization removeCategory: self categoryNameForTemporaryClasses]