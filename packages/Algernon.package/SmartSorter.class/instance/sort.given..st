sorting
sort: aList given: aString
	"aList is a list of algertems, aString is what was typed in the text box"
	| newList lowercaseString|
	lowercaseString := aString asLowercase.
	newList := SortedCollection sortBlock: [:a :b | a isLessThan:b given:lowercaseString].
	"First grab items which are ranked highest"
	aList do: [ :each | newList add:each].
	^newList.
	