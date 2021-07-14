testing dynamic items
testDynamicItemsOnlyOnDefaultSearchLevel

	self runQuery: 'Transcript clear'.
	self assert: ((self itemMorphs 
					reject: [:each | each item isNil])
					anySatisfy: [:each | each item algerType isKindOf: ALGWorldMenuType ]).
			
	"increase search level" 		
	self runQuery: 'Monticello' withCursorAt: 'Package'.
	self algInstance showChildList.
		
	self deny: ((self itemMorphs 
					reject: [:each | each item isNil])
					anySatisfy: [:each | each item algerType isKindOf: ALGWorldMenuType ]).