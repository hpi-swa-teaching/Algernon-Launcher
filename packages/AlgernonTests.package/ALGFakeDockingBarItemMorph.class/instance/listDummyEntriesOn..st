event handling
listDummyEntriesOn: menu

	menu addItem: 
		[ :item | item
			contents: 'Dummy menu entry';
			target: self;
			selector: #doNothing				]