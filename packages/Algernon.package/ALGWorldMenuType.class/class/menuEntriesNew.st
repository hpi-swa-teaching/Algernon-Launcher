algertem lists
menuEntriesNew

	|menuEntries entries|
	
	entries := OrderedCollection new.
	
	menuEntries := (self dockingBar submorphs
		collect: [:morph | ALGNamedWorldMenuEntry newFrom: morph])
		select: [:entry | entry isValid].
	entries addAll: menuEntries.

	^ menuEntries
		inject: OrderedCollection new into: [:accumulator :entry | accumulator addAll: entry subEntries; yourself]