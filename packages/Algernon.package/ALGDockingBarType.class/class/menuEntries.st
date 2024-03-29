algertem lists
menuEntries

	| entries |
	
	entries := self dockingBar submorphs
		collect: [:morph | ALGNamedDockingBarEntry newFrom: morph]
		thenSelect: 
			[:entry | entry isValid 
				and: [entry hasEntries] 
				and: [entry name ~= 'Windows']].
	entries do: [:entry | entry category: entry name].
	
	^ entries