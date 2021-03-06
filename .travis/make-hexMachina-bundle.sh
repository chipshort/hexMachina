#!/bin/bash
cd $HOME
mkdir hexmachina-bundle hexmachina-bundle/src hexmachina-bundle/test
# hexCore
rsync -a ./hexcore/src ./hexmachina-bundle 
rsync -a ./hexcore/test ./hexmachina-bundle 
cp ./hexcore/README.md ./hexmachina-bundle/README-hexcore.md
# hexInject
rsync -a ./hexinject/src ./hexmachina-bundle 
rsync -a ./hexinject/test ./hexmachina-bundle 
cp ./hexinject/README.md ./hexmachina-bundle/README-hexinject.md
# hexNVC
rsync -a ./hexmvc/src ./hexmachina-bundle 
rsync -a ./hexmvc/test ./hexmachina-bundle 
cp ./hexmvc/README.md ./hexmachina-bundle/README-hexmvc.md
# hexIoC
rsync -a ./hexioc/src ./hexmachina-bundle 
rsync -a ./hexioc/test ./hexmachina-bundle 
cp ./hexioc/README.md ./hexmachina-bundle/README-hexioc.md
# hexService
rsync -a ./hexservice/src ./hexmachina-bundle 
rsync -a ./hexservice/test ./hexmachina-bundle 
cp ./hexservice/README.md ./hexmachina-bundle/README-hexservice.md
# hexAnnotation
rsync -a ./hexannotation/src ./hexmachina-bundle
rsync -a ./hexannotation/test ./hexmachina-bundle 
cp ./hexannotation/README.md ./hexmachina-bundle/README-hexannotation.md
# hexState
rsync -a ./hexstate/src ./hexmachina-bundle 
rsync -a ./hexstate/test ./hexmachina-bundle 
cp ./hexstate/README.md ./hexmachina-bundle/README-hexstate.md
# hexUnit
rsync -a ./hexunit/src ./hexmachina-bundle 
rsync -a ./hexunit/test ./hexmachina-bundle 
cp ./hexunit/README.md ./hexmachina-bundle/README-hexunit.md
# zip and move to $TRAVIS_BUILD_DIR
zip -r ./hexMachina-bundle-${TRAVIS_TAG}.zip  ./hexmachina-bundle
mv ./hexMachina-bundle-${TRAVIS_TAG}.zip $TRAVIS_BUILD_DIR
