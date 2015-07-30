event handling
handlesKeyboard: event

	^ self active & event isKeystroke & (event keyString ~= self class activationString)