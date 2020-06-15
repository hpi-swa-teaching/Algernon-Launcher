actions
createListOfAlgeractions
	| aMethod algerActions |
	aMethod := self typeObject.
	algerActions := {self createActionSendersFor: aMethod. self createActionImplementorsFor: aMethod} asOrderedCollection.
	algerActions addAll: self createListOfClassAwareAlgeractions.
	^ self createSortedListFrom: algerActions