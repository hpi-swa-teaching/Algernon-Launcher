testing
assert: aBlock opensNewDialog: windowName

 	| browsers newBrowsers |

 	browsers := self findDialogWindowsByLabel: windowName.

 	aBlock value.

 	newBrowsers := self findNewDialogWindowsByLabel: windowName old: browsers.
 	self assert: 1 equals: newBrowsers size.
	^ newBrowsers first