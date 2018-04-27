accessing
activationString

	ActivationString ifNil:  [ALGCore activationString: '<Cmd-space>' ].
	 ActivationString ifEmpty: [ALGCore activationString: '<Cmd-space>'].
	^ActivationString 