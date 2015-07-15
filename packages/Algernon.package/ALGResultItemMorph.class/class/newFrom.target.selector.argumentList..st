instance creation
newFrom: anItem target: target selector: aSymbol argumentList: argList
	| itemMorph |
	itemMorph := self new
		color: Color black;
		extent: 20 @ 22;
		item: anItem;
		contents: anItem name;
		target: target;
		selector: aSymbol;
		arguments: argList asArray.
	(anItem icon) "todo why does lazy initilization not work for action types?"
		ifNil: [ itemMorph icon: (ALGIconFactory getInstance iconFor: anItem) ]
		ifNotNil: [ itemMorph icon: anItem icon form ].
	^ itemMorph