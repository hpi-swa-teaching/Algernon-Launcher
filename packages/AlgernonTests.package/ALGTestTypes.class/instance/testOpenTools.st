testing
testOpenTools
	"Test the do hotword by running different example queries"
	| browserResults browserWindowCount |
	#('Transcript' 'message names' 'Browser')
		do: [:tool | 
			self runQuery: 'open ' , tool.
			browserResults := self items
						select: [:each | each name = tool
								and: [each algerType typeName = 'Morph']].
			self assert: browserResults notEmpty.
			browserWindowCount := self currentBrowsers size.
			self doActionForItem: browserResults first.
			self assert: browserWindowCount < self currentBrowsers size]