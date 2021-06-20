testing
testAlgernonUnknownActivationString

	| dialogCount browserCount browsers |
	dialogCount := DialogWindow allInstances size.
	browserCount := (self findSystemWindowsByLabel: 'Preference Browser') size.
	
	"Test that a dialog is opened if shortcut hasnt been tested for platform"
	[ World doOneCycle.
	DialogWindow allInstances last buttons first performAction ] fork.

	ALGCore initializeActivationStringForPlatform: 'Redox'.
	
	self assert: DialogWindow allInstances size > dialogCount.
	
	World doOneCycle.
	
	"Test that PreferenceBrowser is open"
	browsers := self findSystemWindowsByLabel: 'Preference Browser'.
	self assert: browsers size > browserCount.
	self assert: browsers last selectedCategory = #Algernon