actions
createActionFileoutFor: aClass

	^ ALGAction
			withName: 'fileOut' 
			rank: 8
			target: aClass
			selector: #fileOut
			args:#()