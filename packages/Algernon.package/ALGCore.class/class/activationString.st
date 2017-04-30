accessing
activationString

	ActivationString ifNil:  [ALGCore activationString: '<Cmd-p>' ].
	 ActivationString ifEmpty: [ALGCore activationString: '<Cmd-p>'].
	^ActivationString 