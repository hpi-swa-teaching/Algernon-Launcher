testing
testWorkspaceIsInOrder
	"Make sure workspace appears twice."
	| toolName findingsRanks |
	toolName := 'Workspace'.
	findingsRanks := (self itemProviderSearch: toolName)
				collect: [:elem | (elem name = toolName) ifTrue: [elem rank]].
	self assert: findingsRanks first ~= findingsRanks second