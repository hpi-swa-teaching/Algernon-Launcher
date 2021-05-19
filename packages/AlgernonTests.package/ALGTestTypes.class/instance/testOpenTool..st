testing
testOpenTool: tool 
	| browserResults newBrowser oldBrowsers |
	self runQuery: 'open ' , tool.
	browserResults := self items select: [:each | each name = tool
						and: [each algerType typeName = 'World Menu Item']].
	self assert: browserResults notEmpty.
	oldBrowsers := self findSystemWindowsByLabel: tool.
	self doActionForItem: browserResults first.
	newBrowser := self findNewSystemWindowsByLabel: tool old: oldBrowsers.
	self assert: newBrowser notEmpty