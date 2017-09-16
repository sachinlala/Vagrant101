### Reference
* [All about Vagrant and the good stuff by HashiCorp !](https://www.vagrantup.com/)
* Catalogs: [1](https://app.vagrantup.com/boxes/search) & [2](http://www.vagrantbox.es/)

#### For 1st time setup only
1. Ensure the following are installed
* [Virtual Box (with Extension Packages)](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com/)
2. Initialize with a default stable `Vagrantfile` and bring up the VM:
   ```
   cd scratch-area
   vagrant box add hashicorp/precise64 http://files.vagrantup.com/precise64.box
   vagrant init hashicorp/precise64
   vagrant up
   ```
   Note: '_vagrant box add_' step is optional, when downloading from the [HashiCorp Atlas site](https://app.vagrantup.com/boxes/search)

#### Use the Vagrant box with Jetty in it
```
cd jetty
vagrant up
```

#### Command List
|Command|Purpose|
|-------|-------|
|``vagrant up``|Create new or bring up an existing VM|
|``vagrant status``|Check status|
|``vagrant halt``|Suspend (Graceful Shutdown)|
|``vagrant destroy``|Destroy VM|
|``vagrant reload``|Bounce VM|
|``vagrant box list``|Print the list of all templates (aka [vagrant boxes](https://www.vagrantup.com/docs/boxes.html)) present in your machine|
|``vagrant box add <title> <url>``|Add new base box|
|``vagrant box update``|Update the box to latest version available|
|``vagrant provision``|Run the provisioner mentioned in Vagrantfile, while the VM is up & running|



