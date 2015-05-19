testing
testSendersWindow
	|window|
	self ensureMorphic.
	algerstance relevantAlgertemsFor: 'Senders of Morph#abandon' first defaultAlgeraction.
	window := self currentWorld submorphs findA: PluggableSystemWindow.

	self assert: window notNil.
	self assert: (window label startsWith: 'Senders of abandon').

	window close.
	^ nil
