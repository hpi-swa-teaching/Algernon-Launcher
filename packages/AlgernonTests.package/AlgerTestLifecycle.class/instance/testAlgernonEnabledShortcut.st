running
testAlgernonEnabledShortcut

	self assert: [Algernon activateAlgernon not or:
					[Algernon currentInstance activeHand keyboardListeners includes:
						Algernon currentInstance]]