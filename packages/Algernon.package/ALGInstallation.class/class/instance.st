accessing
instance
	^ Instance ifNil: [ Instance := ALGInstallation new ]