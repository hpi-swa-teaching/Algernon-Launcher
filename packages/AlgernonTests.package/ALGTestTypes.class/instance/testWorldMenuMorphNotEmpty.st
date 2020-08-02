testing menu morph type
testWorldMenuMorphNotEmpty

	| morphs workspace |
	workspace := Workspace open.
	morphs := ALGWorldMenuMorphType algertemList.
	workspace delete.
	self deny: morphs isEmpty.
	