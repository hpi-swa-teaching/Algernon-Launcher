accessing
exportAsSarArchive

	| package |
	package := 'Algernon'.
	(UserDialogBoxMorph 
		confirm: 'Do you have incremented the versionNumber of ', package,
				 ' before you release a new version?')
		ifTrue: [ self sarFromPackage: package ] 