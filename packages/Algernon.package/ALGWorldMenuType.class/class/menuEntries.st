algertem lists
menuEntries

	^ (((self dockingBar submorphs
		collect: [:morph | ALGNamedWorldMenuEntry newFrom: morph])
		select: [:entry | entry isValid])
		select: [:entry | entry name ~= 'Windows' ])
		collect: [:entry | entry category: entry name]