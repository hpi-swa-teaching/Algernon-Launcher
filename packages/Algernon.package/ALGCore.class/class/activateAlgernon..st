preferences
activateAlgernon: boolean

	self activateAlgernon = boolean ifTrue: [^ self].
	
	boolean
		ifTrue: [ self initializeAlgernon ]
		ifFalse: [ self cleanup ].