testing
testAlgernonUnknownActivationString

	| browser |
	
	"Test that a dialog is opened if shortcut hasnt been tested for platform"

	self assert: 
		[ ALGCore initializeActivationStringForPlatform: 'Redox'.
		  10 milliSeconds wait.
		  World doOneCycle                                                        ]
		opensNewDialog: 'Algernon Default Keybinding'.
	
	browser := self assert: 
		[ DialogWindow allInstances last buttons first performAction.
		  10 milliSeconds wait.
		  World doOneCycle                                                                ]
		opensNewWindow: 'Preference Browser'.
	self assert: browser selectedCategory = #Algernon