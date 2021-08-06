initialization
enabledMessage

	^ 'Algernon is now enabled! You can activate it using the key combo {1}.
	You can change the key combo in the preferences.'
		format: { self activationString }.