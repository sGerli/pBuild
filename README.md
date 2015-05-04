# pBuild for Travis-CI
PebbleBuild is a tool for building pebble projects in Travis CI based on  [Sawyer Pangborn's travis-ci-pebble](https://github.com/spangborn/travis-ci-pebble).

## Setup
1. To install pBuild, copy .travis.yml, before_install.sh, and build.sh to your pebble app's github repository. 
2. Then go to travis, go into your repoditory (in Travis) and go to Settings -> Settings and into Enviromental Variables. 
3. Add new enviromental variables: `PEBBLE_SDK=PebbleSDK-3.0-beta10` and check "Display value in build logs", and `PEBBLE_PROJECT_PATH=[RepoOwnerUsername]/[Repo name]` Example: `PEBBLE_PROJECT_PATH=sGerli/pBuild` (this one is case sensitive) and check "Display value in build logs"
