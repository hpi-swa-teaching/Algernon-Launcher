accessing
menuEntries

	^ self menuSubmorphs
		collect: [ :morph | ALGNamedDockingBarEntry newFrom: morph inCategory: self category ]
		thenSelect: [ :entry | entry isValid and: [entry isEnabled] ]