accessing
showUnknownPlatformDialogSync

	(DialogWindow new
			title:  'Algernon Default Keybinding';
			message: ALGCore unknownPlatformMessage;
			createButton: 'OK' translated value: nil;
			yourself) exclusive: false; getUserResponseAtHand.
	
	PreferenceBrowser open selectedCategory: #Algernon