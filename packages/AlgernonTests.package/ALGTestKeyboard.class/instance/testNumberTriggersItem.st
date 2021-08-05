testing
testNumberTriggersItem
    | windowName keyEvent oldWindows |

    self runQuery: 'browse ALGTest'.
    windowName := 'System Browser: ' , (self items at: 3) algerType name.
    oldWindows := self findSystemWindowsByLabel: windowName.
    keyEvent := ALGFakeKeyboardEvent new
                buttons: ((Dictionary newFrom: {'ctrl' -> 16. 'cmd' -> 64})
                        at: ALGCore setQuickAccessModifier asLowercase);
                 keyValue: '3';
                 isKeyUp: false.
    self algInstance keyStroke: keyEvent.
    self assert: (self findNewSystemWindowsByLabel: windowName old: oldWindows) size equals: 1