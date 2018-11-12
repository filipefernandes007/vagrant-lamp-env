# Vagrant 16.04 LTS Ubuntu php web development

### We will install :

* [PHP] 5.6, 7.0, 7.1, 7.2, 7.3
* [Apache](https://www.apache.org/) 2.4
* [Mysql](https://dev.mysql.com/downloads/mysql/5.7.html) 5.7
* [Sqlite3](https://sqlite.org/index.html)
* [MongoDB](https://www.mongodb.com/download-center) 4.0
* [Elasticsearch](https://www.elastic.co/products/elasticsearch) 6.4.2
* Java 8
* [Redis](https://redis.io) latest stable
* [Nodejs](https://nodejs.org) 10.x
* [Git](https://git-scm.com)
* [Composer](https://getcomposer.org/)

### Install

```
git clone https://github.com/filipefernandes007/vagrant-lamp.git
cd vagrant-lamp
vagrant up
```

### App folder

Your applications live in `` /vagrant/www/ ``

### Access your virtual machine and app folder

Your projects/apps must be under **/vagrant/www/** folder.
```
vagrant ssh
cd www
```

### Choose what to install

At **config/config.yml** you can decide what to be installed 
in your virtual machine. Choose _true_ for the dependencies you like to
be installed.

### MYSQL Credentials and Client Access via SSH

For _**mysql**_ access you can use this credentials : *root:root*

For _**mysql**_ access client via ssh :

* SSH Host : 192.168.33.185
* SSH User : vagrant
* SSH Password : vagrant

### How to use:

After setup is finished, go to 192.168.33.185 in your browser. You should see the `phpinfo()` page.
`phpMyAdmin` is accessible at http://192.168.33.185/phpmyadmin/ Username is 'root', password 'root'

### With Symfony

If you are going to use Symfony server command, do this:

```
php bin/console server:run 0.0.0.0:8000
```

Enjoy!