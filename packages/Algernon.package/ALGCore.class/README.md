Algernon is a system wide launcher/search tool that lets you easily find and open things in Squeak. Inspired by similar tools for Mac OS X (Quicksilver, Launchbar, Butler, Spotlight ).

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
						
# Places to start with the project
Here are some important things to look at:
- ALGItem
- ALGItemProvider
- ALGType
- ALGItemFilter
- ALGResultItemList

Try to understand how these classes play together to see how data flows through Algernon. Here is a basic outline
1. ALGCore is initialized and creates an item provider.
2. The item provider asks all ALGTypes to create items.
---
3. A user enters a search.
4. ALGCore asks the item provider for the relevant items
5. The item provider looks into its cache and provides the cached items for filtering to the ALGItemFilter
6. The filter uses the ALGFuzzyMatcher and the interface of ALGItem to determine how well an item matches the search string.
7. The ALGSmartSorter sorts the matching items based on their fuzzyRank and when they were last used.
8. This data is retured to the ALGCore which creates an ALGResultItemList which is the morph displaying the result. 