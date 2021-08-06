events-processing
ifShouldHandleAsQuickAccess: anEvent do: aBlock
    ((anEvent modifierString sameAs: self class quickAccessModifier , ' ')
            and: ['123456789' includes: anEvent keyCharacter])
        ifTrue: [aBlock value]
