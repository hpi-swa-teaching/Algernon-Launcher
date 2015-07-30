actions
createActionExploreFor: aClass

	^ ALGAction
			withName: 'explore instances' 
			rank: 6
			target: aClass
			selector: #allInstancesDo:
			args: (OrderedCollection with: [ :instance | instance explore ])