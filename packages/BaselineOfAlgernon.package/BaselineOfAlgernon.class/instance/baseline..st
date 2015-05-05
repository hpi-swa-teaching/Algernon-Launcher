baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'Algernon';
                package: 'Algernon-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Algernon');
                group: 'Tests' with: #('Algernon-Tests');
                group: 'TravisCI' with: #('Tests') ]