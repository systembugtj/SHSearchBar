fastlane documentation
================
# Installation
```
sudo gem install fastlane
```
# Available Actions
## iOS
### ios changelog
```
fastlane ios changelog
```
Output the changelog based on commits to from last tag to HEAD
### ios run_framework_tests
```
fastlane ios run_framework_tests
```
Runs framework tests
### ios release_production
```
fastlane ios release_production
```
Creates a release branch

Runs framework tests

Increments framework number

Updates podspec file

Pushes podspec file to Cocoapods

Pushes releases to github

Commits and pushes changes to remote and tags the release commit

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [https://fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [GitHub](https://github.com/fastlane/fastlane/tree/master/fastlane).
