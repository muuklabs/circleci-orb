# Muuktest CircleCI Orb

[![CircleCI Build Status](https://circleci.com/gh/muuklabs/circleci-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/muuklabs/circleci-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/muuklabs/muuktest.svg)](https://circleci.com/orbs/registry/orb/muuklabs/muuktest) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/muuklabs/circleci-orb/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)


MuukTest is a codeless test automation platform designed to make software testing 20x faster. No test automation experience is necessary!

The MuukTest CircleCI orb provides a simple configuration settings to enable execution of your effortless automation tests from your [muuktest.com](https://muuktest.com/) organization within your CircleCI CI/CD configuration.

You don't have a muuktest. account? [Sign up now](https://muuktest.com/sign-up/), it's free for individual users. You’ll be ready to start testing in less than 2-minutes! Once signed up, install the MuukTest plug-in and you’re ready to run your first test!

## Examples
**Before to start ⚠️:** : prior to run any of the examples below and any other use of the muuktest orb, you need to set muuk_key environment variable under your CircleCi project settings with your organization key. Please see the following link for reference: (Set muuk_key environment)[https://circleci.com/docs/2.0/env-vars/#setting-an-environment-variable-in-a-project]
Want to know which is your organization key? No problem, see the next link for reference: (MuukTest account)[https://muuklabs.zendesk.com/hc/en-us/articles/4408400288787-Portal-Account]


### Run a single test
Just provide the test tag, this test will be executed on a chrome browser (default value).

```version: '2.1'
orbs:
  muuktest: muuklabs/muuktest@1.0.0
workflows:
  execute:
    jobs:
      - muuktest/mkcli:
          t: TC0001
```

### Run test on firefox
We also support firefox execution, just set it using the browser parameter.

```version: '2.1'
orbs:
  muuktest: muuklabs/muuktest@1.0.0
workflows:
  execute:
    jobs:
      - muuktest/mkcli:
          t: TC0001
          browser: firefox
```

### Run test on firefox
We also support firefox execution, just set it using the browser parameter.

```version: '2.1'
orbs:
  muuktest: muuklabs/muuktest@1.0.0
workflows:
  execute:
    jobs:
      - muuktest/mkcli:
          t: TC0001
          browser: firefox
```

### Run a test by name
This example executes all the tests with the hashtag '#deployment' (notice the # char should not be included on the command).

```version: 2.1
  orbs:
    muuktest: muuklabs/muuktest@1.0.0
  workflows:
    execute:
      jobs:
       - muuktest/mkcli:
          p: hashtag
          t: deployment
          browser: firefox
```

### How to Contribute

We welcome [issues](https://github.com/muuklabs/circleci-orb/issues) to and [pull requests](https://github.com/muuklabs/circleci-orb/pulls) against this repository!

### How to Publish
* Create and push a branch with your new features.
* When ready to publish a new production version, create a Pull Request from _feature branch_ to `master`.
* The title of the pull request must contain a special semver tag: `[semver:<segment>]` where `<segment>` is replaced by one of the following values.

| Increment | Description|
| ----------| -----------|
| major     | Issue a 1.0.0 incremented release|
| minor     | Issue a x.1.0 incremented release|
| patch     | Issue a x.x.1 incremented release|
| skip      | Do not issue a release|

Example: `[semver:major]`

* Squash and merge. Ensure the semver tag is preserved and entered as a part of the commit message.
* On merge, after manual approval, the orb will automatically be published to the Orb Registry.


For further questions/comments about this or other orbs, visit the Orb Category of [CircleCI Discuss](https://discuss.circleci.com/c/orbs).

