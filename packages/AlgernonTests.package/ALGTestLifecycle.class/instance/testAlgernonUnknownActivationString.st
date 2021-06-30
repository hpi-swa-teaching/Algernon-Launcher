testing
testAlgernonUnknownActivationString

	| dialogCount browserCount browsers |
	dialogCount := DialogWindow allInstances size.
	browserCount := (self findSystemWindowsByLabel: 'Preference Browser') size.
	
	"Test that a dialog is opened if shortcut hasnt been tested for platform"

	ALGCore initializeActivationStringForPlatform: 'Redox'.
	10 milliSeconds wait.
	World doOneCycle.
	
	self assert: DialogWindow allInstances size > dialogCount.
	
	DialogWindow allInstances last buttons first performAction.
	10 milliSeconds wait.
	World doOneCycle.
	
	"Test that PreferenceBrowser is open"
	browsers := self findSystemWindowsByLabel: 'Preference Browser'.
	self assert: browsers size > browserCount.
	self assert: browsers last selectedCategory = #Algernon