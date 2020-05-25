testing
testOpenTool: tool 
	| browserResults browserWindowCount |
	self runQuery: 'open ' , tool.
	browserResults := self items
				select: [:each | each name = tool
						and: [each algerType typeName = 'StandardToolSetMorph']].
	self assert: browserResults notEmpty.
	browserWindowCount := self currentBrowsers size.
	self doActionForItem: browserResults first.
	self assert: browserWindowCount < self currentBrowsers size