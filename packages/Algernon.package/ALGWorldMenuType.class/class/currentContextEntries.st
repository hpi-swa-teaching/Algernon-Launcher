algertem lists
currentContextEntries
	| event menu menus items |
	ALGCore currentInstance lastFocus ifNil: [ ^ {} ].
	event :=  MouseButtonEvent new.
	"cursorPos := ALGCore currentInstance textField inputfield cursor.
	Transcript showln: cursorPos."
	event setType: 0 position: 0@0 buttons: 2 hand: ActiveHand.
	ALGCore currentInstance lastFocus mouseDown: event.
	menus := World submorphs select: [ :each | each isKindOf: MenuMorph ].
	menus ifEmpty: [^ {} ].
	menu := menus last.
	items := menu items.
	menu delete.
	World doOneCycle.
	ActiveHand newKeyboardFocus: ALGCore currentInstance textField.
	ALGCore currentInstance moveCursorToEnd.

	^ (items
		collect: [ :each | ALGNamedWorldMenuEntry newFrom: each ])
		do: [ :each | each category: each name ]