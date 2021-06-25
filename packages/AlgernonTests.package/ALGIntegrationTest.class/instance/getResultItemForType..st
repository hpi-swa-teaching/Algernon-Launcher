helpers
getResultItemForType: aTypeString
	self items detect: [:eachItem | eachItem algerType typeName = aTypeString]