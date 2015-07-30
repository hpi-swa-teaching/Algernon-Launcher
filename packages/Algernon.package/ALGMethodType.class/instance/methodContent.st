accessing
methodContent

	| aMethod aClass |
	aMethod := self typeObject.
	aClass := self methodClass.
	^ (aClass sourceCodeAt: aMethod ifAbsent: ['']) asString