actions
createActionExploreFor: aClass

	^ ALGAction
			withName: 'explore instances' 
			rank: 6
			target: self class
			selector: #exploreAllInstancesFor:
			args: (OrderedCollection with: aClass)