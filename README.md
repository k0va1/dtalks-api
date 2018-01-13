# What is DevTalks?
DevTalks is open-source social network for IT professionals. Here you can chatting in our forum or via PM, finding jobs, looking for events(like conferences, talks, etc.) and rate companies.

# How to install
Firstly, clone the repository  
`git clone https://gitlab.com/hetsketch/dtalks-api.git`  
`cd dtalks-api`  
Install gems  
`bundle install`  
Create database & run migrations (for test environment too)  
`rails db:create`  
`rails db:migrate`  
`rails db:migrate RAILS_ENV=test`  
Fill database with seeds  
`rails db:seed`
