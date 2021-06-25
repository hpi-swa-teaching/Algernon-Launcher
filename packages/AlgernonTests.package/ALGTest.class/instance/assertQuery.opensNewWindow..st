testing
assertQuery: query opensNewWindow: windowName

 	| browsers newBrowsers |

 	browsers := self findSystemWindowsByLabel: windowName.

 	self runQuery: query.
	self activateCurrentItemAction.

	World doOneCycle.

 	newBrowsers := self findNewSystemWindowsByLabel: windowName old: browsers.
 	self assert: newBrowsers size = 1