## README


```DB_USED: sqlite```

Reason for using **Sqlite**, My Mac recently got updated and MySQL's old version is not compatible, I will have to reinstall it but I don't want to lose out on my old project data, Given the Time constraints I went ahead with SQLite as it is lightweight.

Changing to **MySQL** is a simple change in configuration and I guess I can do it if you are not satisfied with the SQLITE, let me know.

**Changes needed to Migrate to Mysql from SQLite:**
update the adapter in **config/database.yml** to **adapter: mysql2**

and add **bin/bundle add mysql2**


**Actual Read Me starts here:**

Ruby Version: 3.2.2
System dependencies sqlite

Database creation: bin/rails db:bigrate
Database initialization: bin/rails db:seed

Tests: bundle exec rspec


