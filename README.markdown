|/
|\ISS LINUX                                                https://kisslinux.org
________________________________________________________________________________


Unofficial Main Repository
________________________________________________________________________________


The officially unofficial repository for KISS Linux maintained by kiss-community

More information:

    - https://kisslinux.org
    - https://kisslinux.org/package-system


Enabling SSH signature verification (recommended):
________________________________________________________________________________

$ cd /path/to/repo
$ git config gpg.ssh.allowedSignersFile .allowed_signers
$ git config merge.verifySignatures true

Community Repository
________________________________________________________________________________

The unofficial community repository for KISS Linux, maintained by the community.


Documentation
________________________________________________________________________________

- https://kisslinux.org/package-system
- https://kisslinux.org/package-manager
- https://kisscommunity.bvnf.space/kiss/style-guide


Maintenance
________________________________________________________________________________

KISS follows a maintainer model when it comes to package ownership. Only the
maintainer of a package has the ability to push changes to said package. Any
issues must be reported to the maintainer directly.

The maintainer's details can be found via 'git log' or the 'kiss maintainer'
command. If the maintainer cannot be reached via email, open an issue in this
repository on Codeberg.

If the maintainer does not respond within a reasonable amount of time, the
package will be orphaned and ownership will be given to someone else.


Submitting Pull Requests
________________________________________________________________________________

Pull requests should contain only a single package. This makes the review
process easier and allows for individual packages to be merged without waiting
on reviews for others.

Please fill out the pull request template as well.


Commit Style
________________________________________________________________________________

Contributions to this repository should adhere to the following commit style.

+------------------------------------------------------------------------------+
| Adding a new package                                                         |
+------------------------------------------------------------------------------+
|                                                                              |
|   $ git commit -m "pkg_name: new package at pkg_version"                     |
|                                                                              |
+------------------------------------------------------------------------------+
| Updating an existing package                                                 |
+------------------------------------------------------------------------------+
|                                                                              |
|   $ git commit -m "pkg_name: pkg_version"                                    |
|   $ git commit -m "pkg_name: bumped to pkg_version"                          |
|                                                                              |
+------------------------------------------------------------------------------+
| Miscellaneous changes                                                        |
+------------------------------------------------------------------------------+
|                                                                              |
|   $ git commit -m "pkg_name: other changes"                                  |
|   $ git commit -m "pkg_name: added missing dep_name dependency"              |
|   $ git commit -m "pkg_name: fixed incorrect bin dir"                        |
|   $ git commit -m "pkg_name: fixed build failure ..."                        |
|                                                                              |
+------------------------------------------------------------------------------+
# kiss-xorg

```ascii
+----------------------------------------+
|                           ;;;;;;;;;;;;;|
| XORG                      ;\;;;\\;;;|;;|
|                            ;\\;;|;|;;|||
|                             ;'| '    ;||
|         .---.                 | | |   ||
|;;;     [     ]   |||    ;;@   | | '   ||
|@;@;;   |  X  | `-vvv  ;@;;;;_/    |   \|
|;;;@;;@ |     |    | ;;;;;;@/   /;;\    |
+----------------------------------------+
```

A collection of repositories for running Xorg on KISS Linux.

Due to upstream KISS making the switch to wayland, and
my reliance on X, I forked the main repo.

Feel free to create Issues and Pull Requests for outdated software!

## Structure

* `xorg/`  - contains the X11 distribution, and other misc software for X
* `extra/` - contains the browser (firefox) and media player (mpv)
	* NOTE: You will still need the upstream extra repo!
* `community/` - contains useful software that depends on X
	* currently working on saving some of the software that was dropped from [kiss-community/community](https://github.com/kiss-community/community)
* `games/` - contains video games

## Usage

Just add the directories *before* the official KISS repos in your KISS_PATH

Example:

```sh
KISS_PATH="/path/to/repo/core"
KISS_PATH="${KISS_PATH}:/path/to/kiss-xorg/extra"
KISS_PATH="${KISS_PATH}:/path/to/kiss-xorg/xorg"
KISS_PATH="${KISS_PATH}:/path/to/repo/extra"
...
```

## What's that extra file? (esources)

Packages in this repo have an additional file, not directly specified by kiss,
that being the `esources` file. This file is meant to side step the use
of VERSION markers in `sources` which is a somewhat contentious topic.

This does require having access to an additional command, namely
`kiss-echecksum` which is available from my personal repo
[here](https://raw.githubusercontent.com/ehawkvu/kiss-personal/master/bin/kiss-echecksum).
If there is interest, I would not mind trying to upstream this utility to the
`contrib/` folder for kiss.

Bumping versions then has this workflow:

```shell
echo "9.99.9 1" > version
kiss echecksum
```

## Support

distro/fork | tested? | notes
-----------:|--------:|-----:
[kisslinux](https://kisslinux.org) | Y | n/a
[gkisslinux](https://github.com/kiss-community/grepo) | Y |
[glasnost](https://glasnost.org) | Y | clang is a dep of some packages, so a dummy package is needed
[wyverkiss](https://github.com/wyvertux) | Y | need to fork some packages for gmake & bison
[noir](https://github.com/noirlinux/main) | N |
[carbslinux](https://carbslinux.org/) | n/a | carbs ships with Xorg already
