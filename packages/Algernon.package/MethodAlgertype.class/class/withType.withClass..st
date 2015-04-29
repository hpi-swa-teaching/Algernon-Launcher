instance creation
withType: aTypeObject withClass: aClass
	|anAlgertype|
	anAlgertype := super with: aTypeObject.
	anAlgertype methodClass: aClass.
	^anAlgertype.