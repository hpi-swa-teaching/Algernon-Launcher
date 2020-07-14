as yet unclassified
quitSqueak

	^Smalltalk
		snapshot: (
			UserDialogBoxMorph 
				confirm: 'Save changes before quitting?' translated 
				orCancel: [ ^self ]
				at: Project current world center)
		andQuit: true