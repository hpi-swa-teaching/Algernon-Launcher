preferences
activateAlgernon
	<preference: 'Activate Algernon'
		category: #Algernon
		description: 'Registers the keyboard shortcut to open Algernon.'
		type: #Boolean>
		
	^ self currentInstance notNil and: [self currentInstance registeredWithSystem]