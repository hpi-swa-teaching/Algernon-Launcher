default item list
defaultAlgertems

	^ DefaultAlgertems ifNil: [self initializeAlgertems. DefaultAlgertems]