helpers
findPluggableSystemWindowsByLabel: aString
	^ PluggableSystemWindow allInstances select: [:each | each name includesSubstring: aString ]