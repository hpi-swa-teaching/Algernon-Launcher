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
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'Grease' with: [
				spec
					className: 'ConfigurationOfGrease';
					versionString: #'stable';
					loads: #('Slime');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					repository: 'http://www.squeaksource.com/MetacelloRepository'];
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'stable';
					loads: #('Development');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					repository: 'http://www.squeaksource.com/MetacelloRepository'].
			spec   
				package: 'JSON'
						with: [
							spec
								file: 'JSON-ul.35';
								repository: 
										'http://www.squeaksource.com/JSON' ];
				package: 'FFI-Pools' with: [
							spec
								file: 'FFI-Pools-eem.13';
								repository: 
										'http://source.squeakfoundation.org/FFI' ];
				package: 'FFI-Kernel' with: [
							spec
								file: 'FFI-Kernel-nice.68';
								repository: 
										'http://source.squeakfoundation.org/FFI' ];
			
			"swalint setup"
			package: 'SwaLint-Preferences' with: [
							spec
								file: 'SwaLint-Preferences-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages' ];
			package: 'SwaLint-Core' with: [spec
								file: 'SwaLint-Core-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages';
								requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
				postLoadDoIt: #postLoad;
			package: 'SwaLint-PlugIns' with: [ spec file: 'SwaLint-PlugIns-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages'; requires: 'SwaLint-Core' ];
				package: 'Algernon';
                package: 'AlgernonTests' with: [ spec requires: #('default') ].

            spec
                group: 'default' with: #('Algernon');
                group: 'Tests' with: #('AlgernonTests');
				group: 'default' with: #('PlugIns');
				group: 'portability' with: #('PlugIns');
				group: 'Core' with: #('SwaLint-Core');
				group: 'PlugIns' with: #('SwaLint-PlugIns'). ]