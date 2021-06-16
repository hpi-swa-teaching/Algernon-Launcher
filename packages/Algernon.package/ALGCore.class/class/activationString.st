accessing
activationString

	ActivationString ifNil:  [ALGCore activationString: '<Ctrl->' ].
	 ActivationString ifEmpty: [ALGCore activationString: '<Ctrl->'].
	^ActivationString