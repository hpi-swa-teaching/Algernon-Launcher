testing
testGlobalVariableNotEmpty

	| variables |
	variables := ALGGlobalVariableType algertemList.
	self deny: variables isEmpty