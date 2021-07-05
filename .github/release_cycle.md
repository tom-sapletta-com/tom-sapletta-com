## Release Cycle

* New version is developed on devel branch
* Each fix and feature need to be added to CHANGELOG.md file
* After random number of feature and bugfixes are done, the code need to be merged with master

```bash
git checkout master
git merge devel --no-ff -m 'merge with devel'
```

* then the next version need to be created, last version from CHANGELOG need to be used
  to call version script that rename files that have version at the end.

``bash
./scripts/version 1.2.3
make
git commit -am 'version 1.2.3'
git push
git tag 1.2.3
git push --tags
```

**NOTE:** if something is wrong (e.g. Travis CI failed) the tag can be removed, fix can be added
in new commit and tag need to be added again.

* Now version on GitHub is released. You need to wait a bit to have confirmation
  from CI that the build was successful. In mean time you can add Release Notes
  on GitHub. Just click releases -> draft new release then pick the version
  and copy paste what's in CHANGELOG.md file.

* After you git confirmation that CI (travis) run successfully you can release
  to npm. By calling:

```bash
make publish
```

* Script will clone the repo (just in case you have lot of files in repo that you
  don't want to publish to npm) into ./npm directory and run `npm publish`,
  after that it will delete the directory.

* New version is ready.
