accessing
morphLayoutFractions
	"'Magic'-Fractions for Morph Positions. 0@0 beeing upper left corner of
	item and 1@1 lower right corner. 
	E.g. NameMorph takes the space 5,55% to 75% of the Width and
	0-100% of the Height."
	| actionEnd |
	actionEnd := (self isTitle not
					and: [self item algerType hasChildren])
				ifTrue: [0.93]
				ifFalse: [0.97].
	^ Dictionary new add: #IconMorphStart -> (0.01 @ 0.3);
		 add: #IconMorphEnd -> (0.04 @ 1);
		 add: #NameMorphStart -> (0.055 @ 0);
		 add: #NameMorphEnd -> (0.75 @ 1);
		 add: #ActionMorphStart -> (0.75 @ 0);
		 add: #ActionMorphEnd -> (actionEnd @ 1);
		 add: #HasChildrenMorphStart -> (actionEnd + 0.01 @ 0.22);
		 add: #HasChildrenMorphEnd -> (actionEnd + 0.03 @ 1);
		 add: #TitleMorphStart -> (0.055 @ 0);
		 add: #TitleMorphEnd -> (0.75 @ 1);
		 yourself