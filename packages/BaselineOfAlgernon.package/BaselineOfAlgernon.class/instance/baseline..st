baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'Algernon';
                package: 'AlgernonTests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Algernon');
                group: 'Tests' with: #('AlgernonTests');
                group: 'TravisCI' with: #('Tests') ]