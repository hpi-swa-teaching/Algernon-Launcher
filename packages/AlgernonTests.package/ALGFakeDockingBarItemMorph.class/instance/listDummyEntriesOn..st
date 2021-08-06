event handling
listDummyEntriesOn: menu

	menu addItem: 
		[ :item | item
			contents: 'Dummy menu entry';
			target: self;
			selector: #doNothing				].
	menu addUpdatingItem: 
		[ :item | item
			contents: 'Disabled dummy menu entry';
			enablementSelector: [ false ];
			isEnabled: false							]