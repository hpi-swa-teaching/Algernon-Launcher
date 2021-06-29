testing
testAppsAndToolsDeduplicated

	| exactMatches |
	self possibleDuplications do: 
		[ :entryName |
			self runQuery: entryName.
			exactMatches := self itemMorphs select: [ :item | item contents = entryName ].
			self assert: 1 equals: exactMatches size										]
