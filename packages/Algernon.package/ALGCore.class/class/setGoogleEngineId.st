preferences
setGoogleEngineId

	<preference: 'Set Google Custom Search Engine ID'
		category: #Algernon
		description: 'Set the Google Custom Search Engine ID needed for showing web search results in Algernon. (See https://github.com/hpi-swa-teaching/Algernon-Launcher/wiki/Setup-Guide#setup-google-web-search for more Information)'
		type: #String>
		^ self googleEngineId
		
		