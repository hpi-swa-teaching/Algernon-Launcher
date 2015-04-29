browsing
existingBrowserIfNone: aBlock
	"returns an existing open browser"
	"code adapted from similar method in WhiskerBrowser"
	|windows collapsedWindows browserWindow|
	windows := SystemWindow   "(search expanded windows first)"
					windowsIn: self currentWorld
					satisfying: [:w | w isCollapsed not].
	"collapsedWindows := SystemWindow
							windowsIn: self currentWorld
							satisfying: [:w | w isCollapsed].
	windows addAll: collapsedWindows."
	browserWindow := windows
		detect: [:w | w model isKindOf: SystemBrowser default]
		ifNone: [^ aBlock value].
	^browserWindow model.