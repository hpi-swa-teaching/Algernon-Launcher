as yet unclassified
asyncHttpGet: urlString withPriority: anInteger response: aBlock
	"Fake asynchronous web request"

	aBlock value: (ALGFakeWebResponse new)