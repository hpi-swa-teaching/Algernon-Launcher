accessing
dynamicItems

	^ (ALGExpressionType algertemList: self controller), 
		(ALGWebSearchType algertemList: self controller),
		ALGDockingBarType algertemList,
		ALGWindowType algertemList