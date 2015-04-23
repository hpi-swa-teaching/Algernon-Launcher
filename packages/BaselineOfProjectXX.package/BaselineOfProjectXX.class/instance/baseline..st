baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'ProjectXX-Core';
                package: 'ProjectXX-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('ProjectXX-Core');
                group: 'Tests' with: #('ProjectXX-Tests');
                group: 'TravisCI' with: #('Tests') ]