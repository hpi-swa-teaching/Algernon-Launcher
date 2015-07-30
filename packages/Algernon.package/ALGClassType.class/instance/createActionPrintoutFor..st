actions
createActionPrintoutFor: aClass

	^ ALGAction
			withName: 'printOut' 
			rank: 7
			target: aClass
			selector: #fileOutAsHtml:
			args: (OrderedCollection with: true)