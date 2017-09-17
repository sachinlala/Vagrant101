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
   Note: '_vagrant box add_' step is optional, when using a template from [HashiCorp Atlas site](https://app.vagrantup.com/boxes/search)

#### Sample Dev Box w/ a web-server(e.g. when you need a dev env with JDK & [Jetty](http://www.eclipse.org/jetty/index.html) in it):
What were the key steps executed to construct this box:
1. Give a name to the VM
2. Open and map the required port (80:8080) between host & guest OS
3. Provision a SHELL to download & bring up Jetty
```
cd jetty
vagrant up
```

#### Command List
|Command|Purpose|
|:-------|-------|
|_vagrant up_|Create new or bring up an existing VM|
|_vagrant status_|Check status|
|_vagrant halt_|Suspend (Graceful Shutdown)|
|_vagrant destroy_|Destroy VM|
|_vagrant reload_|Bounce VM|
|_vagrant box list_|Print the list of all templates (aka [vagrant boxes](https://www.vagrantup.com/docs/boxes.html)) present in your machine|
|_vagrant box add <title> <url>_|Add new base box|
|_vagrant box update_|Update the box to latest version available|
|_vagrant provision_|Run the provisioner mentioned in Vagrantfile, while the VM is up & running|
