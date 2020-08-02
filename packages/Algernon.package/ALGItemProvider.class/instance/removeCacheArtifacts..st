filtering
removeCacheArtifacts: anItemCollection
	^ anItemCollection do: [ :each | each fuzzyRank: nil ].