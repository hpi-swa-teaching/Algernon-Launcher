test-TopCategorizer
testTopCategorizer

	| items typeA typeB categorizer categorized expectedItems categoryItems |
	typeA := ALGClassType with: ALGCore.
	typeB := ALGCategory newWithTitle: 'AlgernonTests'.
	items := (1 to: 10) collect: [ :i | ALGFakeItem new rank: i * i; algerType: typeA; yourself ].
	expectedItems := {	ALGFakeItem new rank: 450; algerType: typeB; yourself .
							ALGFakeItem new rank: 550; algerType: typeA; yourself .
							ALGFakeItem new rank: 223; algerType: typeB; yourself }.
	items := items asOrderedCollection addAll: expectedItems; yourself.
	items sort: [ :a :b | a rank > b rank ].
	
	categorizer := ALGTopCategorizer new.
	categorized := categorizer categorize: items.
	self assert: 1 equals: categorized size.
	categoryItems := categorized first items.
	self assert: ALGTopCategorizer maxNumTopResults equals: categoryItems size.
	self assert: (categoryItems includesAllOf: expectedItems)