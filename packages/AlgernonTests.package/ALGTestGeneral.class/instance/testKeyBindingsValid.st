testing
testKeyBindingsValid
	self algInstance class initializeGlobalKeyBindings.
	self
		assert: (self algInstance class keyBindings associations
				allSatisfy: [:each | each key isString
						and: [each value isBlock]])