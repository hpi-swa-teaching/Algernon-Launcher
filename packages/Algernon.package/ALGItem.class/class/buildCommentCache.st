caching
buildCommentCache

	| classes dict |
	classes := Smalltalk allClasses asOrderedCollection.
	dict := Dictionary new.
	classes do: [ :class | (self wordsOfCommentFromClass: class) do:
		[ :word | self addClass: class toDict: dict atValue: word onlyLetters ]].
	^ dict