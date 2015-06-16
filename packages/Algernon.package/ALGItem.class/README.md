An "Algertem" is an Algernon List Item. These are items which show up in the drop down menu when you start typing in the main window.

initials					String					This is a string that contains all the capital letters in the name of the Algertem (stored in lowercase)
numTimesSelected	integer 				Each time you hit return on an Algertem, this variable is incremented by one
rank					integer 				rank is used for sorting. Higher rank appears at the top of the list.
algeractions			SortedCollection		list of actions that can be performed on this algertem
lowerCaseName    	String					Algertem name stored in lowercase
algertype				Algertype				The type of this algertem (e.g., class, category, etc.)
isRelevantForEmptyString    boolean   		If this is true, then the algertem will show up in the list even if there is nothing typed in the text field