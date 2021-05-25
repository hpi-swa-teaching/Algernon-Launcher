actions
createActionCloseAllLikeThis

	^ ALGAction
			withName: 'close all like this' 
			rank: 6
			target: self
			selector:#closeAllWindowsLikeThis
			args: #()