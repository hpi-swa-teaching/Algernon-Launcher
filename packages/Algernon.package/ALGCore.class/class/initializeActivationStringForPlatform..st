accessing
initializeActivationStringForPlatform: platformName

	 ALGCore activationString: (ALGCore defaultActivationStrings at: platformName ifAbsent: 
		[ [ALGCore showUnknownPlatformDialog] fork.
		ALGCore deactivate.
		ALGCore defaultActivationStrings at: 'unknown' ])