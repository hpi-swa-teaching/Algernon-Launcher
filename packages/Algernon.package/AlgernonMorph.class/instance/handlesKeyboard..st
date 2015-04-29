event handling
handlesKeyboard: event

	^ self active and: [event isKeystroke and: [event keyString ~= self class activationString]]