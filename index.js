
var reporter = require('cucumber-html-reporter');

var options = {
        theme: 'bootstrap',
        jsonDir: './results/',
        output: './results/unit_test/cucumber_report.html',
        reportSuiteAsScenarios: true,
        scenarioTimestamp: true,
        launchReport: false,
        failedSummaryReport: true,
    };

    reporter.generate(options);
    

    //more info on `metadata` is available in `options` section below.

    //to generate consodilated report from multi-cucumber JSON files, please use `jsonDir` option instead of `jsonFile`. More info is available in `options` section below.
