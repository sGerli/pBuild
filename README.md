# pBuild for Travis-CI
PebbleBuild is a tool for building pebble projects in travis CI.

## Installation
1. To install pBuild, copy .travis.yml, before_install.sh, and build.sh to your pebble app's github repository. 
2. Then go to travis, go into your repoditory (in Travis) and go to Settings -> Settings and into Enviromental Variables. 
3. Add a new enviromental variable: `PEBBLE_SDK=PebbleSDK-3.0-beta10` and check "Display value in build logs".
