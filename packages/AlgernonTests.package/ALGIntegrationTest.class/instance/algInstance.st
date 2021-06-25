accessing
algInstance
	"An Instance of ALGCore to be used for running the tests.
	Because we want to reuse the instance for performance reasons, we
	store it on the class side. This instance method therefore exists mainly
	to allow a shortcut call."
	^ self class algernonInstance