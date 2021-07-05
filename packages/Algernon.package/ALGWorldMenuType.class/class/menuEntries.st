algertem lists
menuEntries

	^ (self dockingBar submorphs
		collect: [:morph | ALGNamedWorldMenuEntry newFrom: morph])
		select: [:entry | entry isValid]