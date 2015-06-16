Algernon is a system wide launcher/search tool that lets you easily find and open things in Squeak. Inspired by similar tools for Mac OS X (Quicksilver, Launchbar, Butler).

keyBindings  			 Dictionary    			maintains list of global keybindings (e.g., key binding to activate Algernon)
sorter             			 Sorter          			delegate which takes care of sorting the list of items
textField				 TextFieldMorph		where you type
itemList				 ItemList				menu of items that pops up as you type
DefaultAlgertems		 OrderedCollection 	default list of algertems that's initialized once at startup and reinitialized if you manually refresh
algertems				 OrderedCollection	active list of algertems that is currently being used 
currentAlgertem   	 Algertem				this will hold the current working Algertem (e.g., if we drilled into a class, this holds that class)
currentAlgertemLabel   TextMorph             shows name of current algertem (shown when you drill into an item)