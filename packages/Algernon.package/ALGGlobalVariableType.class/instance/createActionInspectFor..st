actions
createActionInspectFor: aVar

	^ ALGAction
			withName: 'inspect' 
			rank: 4
			target: aVar
			selector: #inspect
			args: #()