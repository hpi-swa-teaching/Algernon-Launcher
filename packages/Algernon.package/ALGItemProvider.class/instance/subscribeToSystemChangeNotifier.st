initialize-release
subscribeToSystemChangeNotifier
	| itemKinds changeKinds |
	itemKinds := { AbstractEvent classKind }.
	changeKinds := { AddedEvent changeKind . RemovedEvent changeKind }.
	
	itemKinds do: [ :itemKind |
		changeKinds do: [ :changeKind | 
			SystemChangeNotifier uniqueInstance
				notify: self ofSystemChangesOfItem: itemKind change: changeKind using: #handleSystemChangeEvent: ]]