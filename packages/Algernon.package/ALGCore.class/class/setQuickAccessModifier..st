preferences
setQuickAccessModifier: aString
    ({'cmd'. 'ctrl'} includes: aString asLowercase)
        ifTrue: [self quickAccessModifier: aString.
            ^ true].
    ^ false