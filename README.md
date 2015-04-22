# Lirkes Vagrant

Lirkes project virtual machine.

## Requires

* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

## Usage

* Install Vagrant and VirtualBox
* Clone this repository 
* `cd lirkes-vagrant`
* `vagrant up`

## Connect

Once the build it completed, you can shell into the machine with `vagrant ssh` if you are in the `lirkes-vagrant` directory. If not in the directory, you can shell in the the machine with `ssh -p 2222 vagrant@localhost`.

The default VM login details are:

* Username: vagrant
* Password: Vagrant

Solr can be accessed at [http://localhost:8080/solr](http://localhost:8080/solr)

## Environment

* Ubuntu 14.04
* Tomcat 7
* Solr 4.10.3
* warctools (Internet Archive)
* archive-analysis
* webarchive-indexing
* JWAT-Tools
* Java 7 (OpenJDK)
* Python 2.7.6
