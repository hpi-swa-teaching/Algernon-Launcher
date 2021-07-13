accessing
menuEntries

	^ self menuSubmorphs
		collect: [ :morph | ALGNamedWorldMenuEntry newFrom: morph inCategory: self category ]
		thenSelect: [ :entry | entry isValid and: [entry isEnabled] ]