## README


=> ```DB_USED: sqlite```

Reason for using **Sqlite**, My Mac recently got updated and MySQL's old version is not compatible, I will have to reinstall it but I don't want to lose out on my old project data, Given the Time constraints I went ahead with SQLite as it is lightweight.

Changing to **MySQL** is a simple change in configuration and I guess I can do it if you are not satisfied with the SQLITE, let me know.

**Changes needed to Migrate to Mysql from SQLite:**
update the adapter in **config/database.yml** to **adapter: mysql2**

and add **bin/bundle add mysql2** 

=> Due to time constraints used ERB instead of SLIM, as I am more familiar in erb, can easily convert to slim, if given one more day.




## Actual Read Me starts here


--------------------------------
Ruby Version: 3.2.2

System dependencies: SQLite

Bundle install: ```bundle install```

Database creation: ```bin/rails db:migrate```

Database initialization: ```bin/rails db:seed```

Tests: **bundle exec rspec**


Start local server: ```bin/dev```





**Approach for the project**
----------------------------
Created 2 models User Model for personal information and Employment model

A user can have multiple employments, so added to the corresponding relationship between the User and Employment

Created User Controller and employment controller and created ERB pages and also created hotwire interaction in the app using Turbo frames and added the client side validation using  stimulus controller 


## Enhancments which can be done if given more time and ideally for realtime app


**-> would have installed and setup Rubocorp

->Factory Bot for setting up Ruby objects as test data

-> byebug for debugging 

-> would have dockerized the app and deployed it**




