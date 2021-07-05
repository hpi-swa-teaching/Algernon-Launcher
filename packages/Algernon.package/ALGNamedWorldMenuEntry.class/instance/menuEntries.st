accessing
menuEntries

	^ ((self menuSubmorphs
		collect: [:morph | ALGNamedWorldMenuEntry newFrom: morph inCategory: self category])
		select: [ :entry | entry isValid])
		select: [:entry | entry isEnabled]