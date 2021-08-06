testing
assert: aBlock opensNewWindow: windowName

 	| browsers newBrowsers |

 	browsers := self findSystemWindowsByLabel: windowName.

 	aBlock value.

 	newBrowsers := self findNewSystemWindowsByLabel: windowName old: browsers.
 	self assert: 1 equals: newBrowsers size.
	^ newBrowsers first
