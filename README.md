# salt-script


* Install salt-master And minion node

* Use salt stack install component 

     - Basic Component
        - install docker 
        - 

     - Devops Stack
         - Ldap
         - Ldapadmin
         - Gerrit
         - Gitlab
         - Jenkins
         - Hygieia
         - Postgresql
         
         
# Salt

#### Install Salt :


* Master `Install and configure the salt-master on Master Host`
  - Install salt master:
    ```
    $ yum install -y epel-release
    $ yum install -y salt-master
    ```
   
* Minion `Install and configure the salt-minion on clients`
  - Install salt minion
    ```
    $ yum install -y epel-release
    $ yum install -y salt-minion
    ```

#### Configuring Salt:

* Master 
   - [See configuration example ](https://docs.saltstack.com/en/latest/ref/configuration/examples.html#configuration-examples-master) `Example master configuration file` 
   - Add /etc/salt/master.d/devops.conf on firstox:
 
    ```
    file_roots:
      devops:
        - /salt-script/devops/salt/roots
        - /salt-script/devops/salt/sun-java-formula
    pillar_roots:
      devops:
        - /salt-script/devops/salt/pillar
    fileserver_backend:
      - roots
      - minion
    file_recv: True
    state_output: terse
    autosign_file: /etc/salt/autosign.conf
    ```
  

* Minion
   - Update the *master* attribute in /etc/salt/minion to point to the salt-master hostname

#### Start service
* Master 
   - Run `salt-master -d`
   - To have the Master start automatically at boot time:
        ```
        RHEL/CentOS 5 and 6 : $ chkconfig salt-master on
        RHEL/CentOS 7       : $ systemctl enable salt-master.service
        ```
* Minion
  - Run `$ salt-minion -d -l debug`
  - To have the Master start automatically at boot time:
       ```
       RHEL/CentOS 5 and 6 : $ chkconfig salt-minion on
       RHEL/CentOS 7       : $ systemctl enable salt-minion.service
       ```
       
#### Auth Service

      ```
      salt-key -L
      salt-key -A
      ```

#### Test 

    ```
       salt "*" test.ping 
    
    ```

 ```
salt '*' saltutil.refresh_pillar && salt '*' saltutil.sync_modules
```       