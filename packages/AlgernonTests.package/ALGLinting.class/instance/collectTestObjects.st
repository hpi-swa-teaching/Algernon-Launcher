helpers
collectTestObjects
	| classes |
	classes := SystemNavigation default allClasses.
	classes := classes select: [ :each | each class category beginsWith: 'Algernon' ].
	^ classes collect: [ :each | each as: SLTestObject ].