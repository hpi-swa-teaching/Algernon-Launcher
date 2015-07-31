Algernon is a system wide launcher/search tool that lets you easily find and open things in Squeak. Inspired by similar tools for Mac OS X (Quicksilver, Launchbar, Butler).

Instance Variables
	itemList:			ALGResultList 		the menu of items that pops up as you type
	breadcrumbs:		ALGBreadcrumbs 	the breadcrumbs navigation at the top
	background: 		ALGBackground 	the screen overlay used to maintain focus
	textField: 			ALGInputField 		the input field for search terms
	itemProvider: 		ALGItemProvider 	the model that items are retrieved from
	searchStack: 		Stack 				keeps track of nested searches
	parentStack: 		Stack 				keeps track of the item hierarchy
	oldFoci: 			WeakArray			used to keep and restore keyboard and mouse focus
	active: 				Boolean 			whether Algernon is currently opened
	wasChanged: 		Boolean 			whether the system has been changed externally
	lastInputTime: 		TimeStamp 		keeps track of the last time a search term was entered

Class Variables
	KeyBindings:  		Dictionary 			maintains list of global keybindings (e.g., key binding to activate Algernon)