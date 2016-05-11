accessing
activationString

	ActivationString ifNil:  [ALGCore activationString: '<Cmd- >' ].
	 ActivationString ifEmpty: [ALGCore activationString: '<Cmd- >'].
	^ActivationString 