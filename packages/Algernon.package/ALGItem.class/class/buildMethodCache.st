caching
buildMethodCache

	| classes methods cache |
	classes := Smalltalk allClasses asOrderedCollection.
	"classes addAll: (classes collect: [ :class | class class ]). Crashes on getting lower case of JapaneseEnvironment"
	methods := classes inject: OrderedCollection new into: [ :total :next | total addAll: next methodDict. total ].
	cache := ALGPrefixTreeNode new.
	methods do: [ :method | (self wordsOfMethod: method) do:
		[ :word | cache insert: word onlyLetters with: method selector ]].
	^ cache