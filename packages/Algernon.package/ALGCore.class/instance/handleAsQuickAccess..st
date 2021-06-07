events-processing
handleAsQuickAccess: anEvent
    self itemList selectItemAt: anEvent keyCharacter digitValue.
    self doActionOnSelectedEvent: anEvent