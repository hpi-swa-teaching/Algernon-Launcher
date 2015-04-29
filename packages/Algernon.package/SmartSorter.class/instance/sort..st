sorting
sort: aList
	|newList|
	"aList is a list of algeractions"
	newList := SortedCollection sortBlock: [:a :b | a isLessThan:b].
	"First grab items which are ranked highest"
	aList do: [ :each | newList add:each].
	^newList.
	