accessing
activationString

	ActivationString ifNil:  [ ALGCore initializeActivationString ].
	 ActivationString ifEmpty: [ ALGCore initializeActivationString ].
	^ActivationString