baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [
			spec
			project: 'RefactoringBrowser' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec
			package: 'SwaLint-Preferences' with: [spec
				file: 'SwaLint-Preferences-cypress.1';
				repository:  'github://hpi-swa-teaching/SwaLint:master/packages' ];
			package: 'SwaLint-Core' with: [spec
				file: 'SwaLint-Core-cypress.1';
				repository: 'github://hpi-swa-teaching/SwaLint:master/packages';
				requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
			postLoadDoIt: #postLoad;
			package: 'SwaLint-PlugIns' with: [spec
				file: 'SwaLint-PlugIns-cypress.1';
				repository: 'github://hpi-swa-teaching/SwaLint:master/packages'; requires: 'SwaLint-Core' ].
            spec
                package: 'Algernon';
                package: 'AlgernonTests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Algernon');
                group: 'Tests' with: #('AlgernonTests') ]