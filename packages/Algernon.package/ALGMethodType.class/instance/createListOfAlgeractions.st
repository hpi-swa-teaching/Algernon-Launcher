actions
createListOfAlgeractions
	| aMethod algerActions |
	aMethod := self getMethodNameForActions.
	algerActions := {self createActionSendersFor: aMethod. self createActionImplementorsFor: aMethod} asOrderedCollection.
	algerActions addAll: (self createListOfClassAwareAlgeractions: aMethod).
	^ self createSortedListFrom: algerActions