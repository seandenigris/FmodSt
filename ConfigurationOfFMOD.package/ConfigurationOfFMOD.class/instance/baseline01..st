baselines
baseline01: spec
	<version: 'baseline-0.1'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/SeanDeNigris/FMOD/main/'.
		spec 
			project: 'BabyPhexample' with: [
				spec
					className: 'ConfigurationOfBabyPhexample';
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/SeanDeNigris/SeansPlayground/main/' ].
		spec 
			package: 'FMOD';
			package: 'FMODSpecification' with: [ spec requires: #('BabyPhexample') ] ].
