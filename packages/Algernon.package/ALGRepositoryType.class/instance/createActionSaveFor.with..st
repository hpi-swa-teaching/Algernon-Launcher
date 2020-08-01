actions
createActionSaveFor: aRepository with: aWorkingCopy

	^ ALGAction
			withName: 'saverepo' 
			rank: 9
			target: self
			selector:#save:withPackage:
			args: (OrderedCollection with: aRepository with: aWorkingCopy)