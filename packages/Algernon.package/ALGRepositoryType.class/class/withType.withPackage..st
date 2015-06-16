instance creation
withType: aTypeObject withPackage: aPackage
	|anAlgertype|
	anAlgertype := super with: aTypeObject.
	anAlgertype repositoryPackage: aPackage.
	^anAlgertype.