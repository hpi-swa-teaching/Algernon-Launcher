testing
testAlgernonEnabledShortcut

	self assert: [ALGCore activateAlgernon not or:
					[ALGCore currentInstance activeHand keyboardListeners includes:
						ALGCore currentInstance]]