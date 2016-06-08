instance creation
createListFrom: anItem

	| items actions |
	actions := anItem algerActions.
	items := OrderedCollection new.
	actions do: [ :anAction | | item |
				item := self createFrom: anAction.
				item provider: anItem.
				items add: item ].
	^ items