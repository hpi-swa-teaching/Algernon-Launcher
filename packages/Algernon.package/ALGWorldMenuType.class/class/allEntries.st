algertem lists
allEntries

	| entries |

	entries := self menuEntries inject: OrderedCollection new into:
		[ :accumulator :entry | accumulator addAll: {entry}, entry allEntries; yourself].
	entries := self filterOutDuplicates: entries.
	
	^ entries