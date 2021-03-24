testing categories properties
testCategoriesVisible
	self runQuery: 'Algernon'.
	"Categories show up as disabled list items."
	self assert: (self itemMorphs
			select: [:each | each isEnabled not]) size > 0