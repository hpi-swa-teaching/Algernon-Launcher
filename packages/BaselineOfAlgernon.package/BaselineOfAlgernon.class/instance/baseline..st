baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [
			Preferences disable: #showDeprecationWarnings.		
			spec 
			project: 'RefactoringBrowser' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec
			"swalint setup"
			package: 'SwaLint-Preferences' with: [
							spec
								file: 'SwaLint-Preferences-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:develop/packages' ];
			package: 'SwaLint-Core' with: [spec
								file: 'SwaLint-Core-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:develop/packages';
								requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
				postLoadDoIt: #postLoad;
			package: 'SwaLint-PlugIns' with: [ spec file: 'SwaLint-PlugIns-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:develop/packages'; requires: 'SwaLint-Core' ];
				package: 'Algernon';
                package: 'AlgernonTests' with: [ spec requires: #('default') ];
                package: 'BaselineOfAlgernonTests' with: [ ].

            spec
                group: 'default' with: #('Algernon');
                group: 'Tests' with: #('AlgernonTests' 'PlugIns' 'BaselineOfAlgernonTests');
				group: 'portability' with: #('PlugIns');
				group: 'Core' with: #('SwaLint-Core');
				group: 'PlugIns' with: #('SwaLint-PlugIns'). ]