testing
testWorkspaceIsInOrder
	"Make sure workspace appears twice."
	| toolName findingsRanks |
	toolName := 'Workspace'.
	findingsRanks := (self algInstance itemProvider searchForItems: toolName)
				select: [:elem | elem name = toolName ifTrue: elem rank ifFalse: false].
	self assert: findingsRanks first ~= findingsRanks second