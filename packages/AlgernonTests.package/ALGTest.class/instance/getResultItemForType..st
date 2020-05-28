helpers
getResultItemForType: aTypeString
	self items detect: [:eachItem | eachItem typeName = aTypeString]