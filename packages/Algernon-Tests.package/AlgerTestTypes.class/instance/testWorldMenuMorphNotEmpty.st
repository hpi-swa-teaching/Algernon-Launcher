as yet unclassified
testWorldMenuMorphNotEmpty

	| morphs workspace |
	workspace := Workspace open.
	morphs := ALGWorldMenuMorphType algertemList.
	workspace delete.
	self deny: morphs isEmpty.
	