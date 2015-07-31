as yet unclassified
testGlobalVariableNotEmpty

	| variables |
	variables := ALGGlobalVariableType algertemList.
	self deny: variables isEmpty