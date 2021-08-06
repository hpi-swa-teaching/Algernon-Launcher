actions
createActionCloseAllButThis

	^ ALGAction
			withName: 'close all but this' 
			rank: 5
			target: self
			selector:#closeAllWindowsButThis
			args: #()