algertem lists
allEntries

	| entries |

	entries := OrderedCollection new.
	entries addAll: (self menuEntries inject: OrderedCollection new into:
		[ :accumulator :entry | accumulator addAll: {entry}, entry allEntries; yourself]).
	self currentContextEntries do: [ :entry |
		entries add: entry.
		entries addAll: entry allEntries ].
	entries := self filterOutDuplicates: entries.
	
	^ entries