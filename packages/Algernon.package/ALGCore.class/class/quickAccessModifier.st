accessing
quickAccessModifier
    QuickAccessModifier
        ifNil: [ALGCore quickAccessModifier: 'Cmd'].
    QuickAccessModifier
        ifEmpty: [ALGCore quickAccessModifier: 'Cmd'].
    ^ QuickAccessModifier