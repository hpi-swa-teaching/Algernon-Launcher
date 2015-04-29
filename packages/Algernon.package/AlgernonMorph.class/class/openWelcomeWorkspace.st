welcome
openWelcomeWorkspace

(StringHolder new
	acceptContents: 'Algernon is a productivity tool for Pharo programmers; your personal assistant for Pharo. Algernon aims to make programming in Pharo faster and more keyboard centric. It is a launcher and quick way to access any category, class, morph, or global variable in your image. Pressing shift-return anywhere brings up Algernon. Start typing a class name, a morph''s name, a category, an object, global variable and a list of items is filtered as you type. Press return to perform the default action on that item, or press tab to see a list of possible actions. Algernon can also evaluate Smalltalk expressions. Simply bring up Algernon and type = to enter expression mode to have quick access or print the results.

Usage:

Press shift-return to bring up Algernon. Start typing a name, then press return to perform the default action on the item, or hit tab to see a list of possible actions, included, for example, open that class in a new browser.

Press right arrow to drill into a class or category and see its methods or classes, respectively.

Press ctrl-r to refresh if you add new items that need to be indexed.';
	openLabel:  'Welcome to Algernon')
	position: 250@150;
 	extent: 800 @ 500.
