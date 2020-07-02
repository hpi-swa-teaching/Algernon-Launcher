testing
testWorkspaceIsInOrder
	"Make sure workspace appears twice."
	| toolName findingsRanks |

	toolName := 'Workspace'.

	findingsRanks := (self algerInstance itemProvider searchForItems: 'Workspace') select:
		[ :elem | elem name = toolName ifTrue: [^ elem rank] ifFalse: [^ False] ].
	self deny: findingsRanks isEmpty.	
	"Test that ranks do not follow after another"
	self assert: ((findingsRanks first ) ~= (findingsRanks second ))