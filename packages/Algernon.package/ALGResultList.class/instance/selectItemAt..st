event handling
selectItemAt: anInteger
    | enabledItems |
    enabledItems := self items select: [:item | item isEnabled].
    anInteger > enabledItems size ifTrue: [^ false].
    self selectedItem: (enabledItems at: anInteger).
	 ^ true