#### For 1st time setup only
1. Ensure the following are installed
* [Virtual Box (with Extension Packages)](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com/)
2. Initialize with a default stable `Vagrantfile`
   ```
   vagrant init hashicorp/precise64
   ```
#### Command reference
|Command|Purpose|
|-------|-------|
|vagrant up|Create new or bring up an existing VM|
|vagrant status|Check status|
|vagrant halt|Suspend (Graceful Shutdown)|
|vagrant destroy|Destroy VM|
|vagrant reload|Bounce VM|
