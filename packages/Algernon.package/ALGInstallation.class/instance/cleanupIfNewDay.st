cleanup
cleanupIfNewDay
	"This is a workaround to clear the cache daily until a proper caching system and refreshing item database is implemented"
	Date today > self lastCleanupDate ifTrue: [ self cleanup ]