help
helpTexts
	^ (Dictionary new)
		add: 'run'->'Run a test case.';
		add: 'do'->'Run a given command. Do not print the output.';
		add: '=' -> 'Run a given commad. Print the result.';
		add: 'browse'->'Open a given class in the Browser.';
		add: 'fileout'->'generates a .st file in Resources of squeak image Folder';
		add: 'open'->'open an app, tool or morph';
		add: 'save'->'saves to Repository with a working copy';
		add: 'inspect'->'open Inspector for an object';
		add: 'explore'-> 'open Explorer for an object or all intances of a given class';
		add: 'save'-> 'save the image without closing it';
		add: 'saveandquit'-> 'save the image then close it';
		add: 'quit'-> 'quit the image without saving';
		yourself