testing
testKeyBindingsValid
	self algerInstance class initializeGlobalKeyBindings.
	self
		assert: (self algerInstance class keyBindings associations
				allSatisfy: [:each | each key isString
						and: [each value isBlock]])