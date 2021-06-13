preferences
setQuickAccessModifier: aString
setQuickAccessModifier: aString
    | valid |
    valid := ({'cmd' . 'ctrl'} includes: aString asLowercase).
    valid ifTrue: [ self quickAccessModifier: aString].
    ^ valid
