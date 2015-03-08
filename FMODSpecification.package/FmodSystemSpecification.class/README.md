Dependencies: wait for Versionner in Pharo 3.0 and then make a configuration...

Gofer new
    smalltalkhubUser: 'zeroflag' project: 'BabyMock';
	smalltalkhubUser: 'Phexample' project: 'Phexample';
    package: 'ConfigurationOfBabyMock';
	package: 'ConfigurationOfPhexample';
    load.

(#ConfigurationOfBabyMock asClass project version: '1.0') load.
#ConfigurationOfPhexample asClass project stableVersion load.