testing
deny: aBlock opensNewWindow: windowName

 	| browsers newBrowsers |

 	browsers := self findSystemWindowsByLabel: windowName.

 	aBlock value.

 	newBrowsers := self findNewSystemWindowsByLabel: windowName old: browsers.
 	self assert: 0 equals: newBrowsers size