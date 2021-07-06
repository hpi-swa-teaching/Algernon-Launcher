algertem lists
allEntries

	| entries |

	entries := OrderedCollection new.
	self menuEntries do: [ :entry |
		entries add: entry.
		entries addAll: entry allEntries ].
	entries := self filterOutDuplicates: entries.
	
	^ entries