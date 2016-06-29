instance creation
createListFrom: anItem

	| items |
	items := OrderedCollection new.
	anItem algerActions do: [ :anAction | | item |
								item := self createFrom: anAction.
								item provider: anItem.
								items add: item ].
	^ items