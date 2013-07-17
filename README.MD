Installing Vagrant-HyperV
==========================

Supported Host Operating Systems
===========================================
_Does NOT work with XP_

- Windows Vista
- Windows 7
- Windows 8

Supported HyperV Systems:
===========================================
- Windows 2008
- Windows 2008 R2
- Windows 2012 (Requires Windows 8 RSAT)

Host system prerequisites
===========================================
Requires the Remove Service Administration tools be installed on the host system.
Win 8: http://www.microsoft.com/en-us/download/details.aspx?id=28972
Win 7: http://www.microsoft.com/en-us/download/details.aspx?id=7887
Vista: http://www.microsoft.com/en-us/download/details.aspx?id=21090

HyperV PowerShell Management Library for Hyper-V
http://pshyperv.codeplex.com/

What Works?
===========
- Nothing at present this is just a starting point

TODOs
=========
1. Add a HyperV box
2. Up a HyperV box
3. Halt a HyperV box
4. Destroy a HyperV box

Troubleshooting
===============

What Can I do to help?
======================
1. Contribute Code (See Below)
2. Test Various Scenarios and file bugs for things that dont work

Contributing
============
1. Fork it.
2. Create a branch (git checkout -b my_feature_branch)
3. Commit your changes (git commit -am "Added a sweet feature")
4. Push to the branch (git push origin my_feature_branch)
5. Create a pull requst from your branch into master (Please be sure to provide enough detail for us to cipher what this change is doing)

Development
=============
Clone this repository and use [Bundler](http://gembundler.com) to get the dependencies:

```
$ bundle install
```

Once you have the dependencies, you can run the tests with `rake`:

```
$ bundle exec rake spec
```

If those pass, you're ready to start developing the plugin. You can test
the plugin without installing it into your Vagrant environment by just
creating a [Vagrantfile](http://docs.vagrantup.com/v2/plugins/packaging.html)
in the top level of this directory (it is gitignored) that uses it, and
use bundler to execute Vagrant:

```
$ bundle exec vagrant up
```


References and Shout Outs
=========================


Changelog
=========
