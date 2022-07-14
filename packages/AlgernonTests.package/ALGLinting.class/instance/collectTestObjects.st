helpers
collectTestObjects
	| classes |
	classes := SystemNavigation default allClasses.
	classes := classes select: [ :each | each class category beginsWith: 'Algernon' ].
	(Smalltalk classNamed:	#SquitBrowser) ifNil:
		[classes := classes difference: {ALGGitProjectType . ALGTestGitTypes}].
	^ classes collect: [ :each | each as: SLTestObject ].