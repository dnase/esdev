# Self-contained ES Backend for Nuix Workstation

1) install vagrant and Virtualbox (I recommend using a package manager, chocolatey is good for Windows)

2) `vagrant plugin install vagrant-hostmanager`

3) cd to the directory where you cloned this repo

4) `vagrant up`

5) configure workstation to use `esdev:9300` as the ES cluster server, `elasticsearch` is fine for the cluster name.
