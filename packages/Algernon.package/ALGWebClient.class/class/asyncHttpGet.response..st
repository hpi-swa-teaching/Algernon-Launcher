methods
asyncHttpGet: urlString response: aBlock

	self asyncHttpGet: urlString withPriority: self defaultProcessPriority response: aBlock
	
	