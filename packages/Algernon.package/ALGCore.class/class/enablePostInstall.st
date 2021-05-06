initialization
enablePostInstall

	self activateAlgernon: true.
	(DialogWindow new
		title:  'Installed Algernon!';
		message: 'Algernon is now available!';
		createButton: 'OK' translated value: nil;
		yourself)
			exclusive: false;
			openInWorld.