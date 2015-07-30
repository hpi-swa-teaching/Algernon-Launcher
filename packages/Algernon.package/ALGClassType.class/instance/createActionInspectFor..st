actions
createActionInspectFor: aClass

	^ ALGAction
			withName: 'inspect instances' 
			rank: 5
			target: (aClass theNonMetaClass)
			selector: #inspectAllInstances
			args: #()