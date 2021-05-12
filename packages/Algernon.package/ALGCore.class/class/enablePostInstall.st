initialization
enablePostInstall

	self activateAlgernon: true.
	(DialogWindow new
		title:  'Installed Algernon!';
		message: self enabledMessage;
		createButton: 'OK' translated value: nil;
		yourself)
			exclusive: false;
			openInWorld.