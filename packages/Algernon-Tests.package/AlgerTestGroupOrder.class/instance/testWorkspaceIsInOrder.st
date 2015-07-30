running
testWorkspaceIsInOrder
	"Make sure workspace appears twice."
	| toolName findingsRanks |

	toolName := 'Workspace'.
	algerstance class initializeAlgertems.

	findingsRanks := (algerstance itemProvider relevantItemsFor: 'Workspace') select:
		[ :elem | elem name = toolName ifTrue: [^ elem rank] ifFalse: [^ False] ].
	self assert: findingsRanks size > 1.	
	"Test that ranks do not follow after another"
	self assert: ((findingsRanks at: 1 + 1) ~= (findingsRanks at: 2)).