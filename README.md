# SurrealDB

Enable the surrealdb service in your FreeBSD system's rc.conf file. You can do this by adding the following line to /etc/rc.conf:

```
surrealdb_enable="YES"
```

Optionally, you can also customize the service configuration in rc.conf by specifying additional parameters like memory, port, directory, user, and password. For example:

```
surrealdb_memory="YES"
surrealdb_ip="0.0.0.0:7435"
surrealdb_dir="/var/db/surrealdbdb"
surrealdb_user="root"
surrealdb_pass="root"
```

Make sure to set a username and password before the initial startup when using disk-based storage mode, or else the default (root) will remain, and it won't be removed until the directory where the data is stored is deleted.

You can also use surrealdb without the service, running it as the documentation indicates: https://surrealdb.com/docs/cli/start
