# README

DB_USED:  sqlite

Reason for using Sqlite, My mac recenly got updated and mysql old version is not compatible, I will ahve to reinstall my mysql but I don't want to loose out my old project data, Given the Time contraints I went ahead with sqlite as it is light weight.

Changing to mysql is a one simple change in configuration and I guess I can do it if you are not satisfied with the SQLITE, let me know. 

Changes needed to Migrate to Mysql from sqlite:
update the adapter in config/database.yml to adapter: mysql2

and add bin/bundle add mysql2


Actual Read me Starts here:





This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...





    <%= form_with(model: employment, class:"text-lg inline-block my-3") do |form| %>
      <%= form.check_box :completed,
      data: {
        id: employment.id,
        action: "employments#toggle"
      },
      class: "mr-2 align-middle bg-gray-50 border-gray-300 focus:ring-3 focus:ring-blue-300 h-5 w-5 rounded checked:bg-green-500" %>




  # <%= form.check_box :completed,
  # data: {
  #   id: employment.id,
  #   action: "employments#toggle"
  # },
  # class: "mr-2 align-middle bg-gray-50 border-gray-300 focus:ring-3 focus:ring-blue-300 h-5 w-5 rounded checked:bg-green-500" %>



  <h1 class="font-bold text-2xl">User</h1>
    <div class="mt-4">
      <%= render "form", user: @user %>
    </div>
    
    
    <div id="users">
      <h1 class="font-bold text-lg mb-7">Users</h1>
    
      <div class="px-5" data-controller="users">
    
        <%= render @users %>
      </div>
    </div>