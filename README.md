# circleci-orb


In order to made changes to the muuktest orb functionality or documentation, pull the alpha branch, do desired changes and commit (please title commits according the info on **Increment	Description** provided below) push and then create a PR to master branch.

Once created the PR, circleci will run the jobs to check and publish new changes.

## Pull Request with Special Semver Tag.
The included CI config uses the orb-tools orb to automatically publish orbs that pass testing on the default branch, provided that the commit message contains the correct tag designated the intended semver release.
The tag template looks like this: [semver:<*increment*>], where <*increment*> is replaced with one of the following values:

### Increment	Description
  - major | Issue a 1.0.0 incremented release
  - minor | Issue a x.1.0 incremented release
  - patch | Issue a x.x.1 incremented release
  - skip  | Do not issue a release
  
For example, to release the first major public version of your orb from the alpha branch, your pull request may be titled ***[semver:major] first orb release***.
