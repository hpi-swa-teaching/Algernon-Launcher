instance creation
createListFrom: anItem

	| items actions |
	actions := anItem algeractions.
	items := OrderedCollection new.
	actions do: [ :anAction | | item |
				item := self createFrom: anAction.
				item provider: anItem.
				items add: item ].
	^ items