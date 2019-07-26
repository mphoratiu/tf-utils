Description
---

This are two very light scripts that allows you to upgrade, select version, install new version and set a custom version of terraform per directory.

It uses .tf-version file which would contain the version you want to use. Doesn't go recursive, except for the global version setting.

If no .tf-version file exists in your working directory, it will use the global version, defined in $HOME/.tf-version.

When you switch a version, it switches it globally, if you use a custom .tf-version in a folder, the version of terraform in the local .tf-version file will be used.

Scripts
---
tf-check - tool for verifying and selecting terraform

tf       - wrapper that selects different versions of terraform based on what's configured

