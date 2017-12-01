# Openly
> Anonymous talk therapy and authorized IRL crisis intervention.

* This application intends to provide an environment for free, private, 1-on-1 talk therapy between authenticated CLIENTS and verified MENTORS, as well as introductory access to professional help provided by MENTORS to CLIENTS who are in crisis.  

* Diagramming, mockups, and planning hosted on Trello: [https://trello.com/###endpoint]


## Openly Application Specifications

* Visiting User: 
  * May only view informational content, with prompts to create an Openly account. 
  * May not interact with Registered Users or Openly staff. 

* Registration: 
  * To authenticate, each user must create a single PROFILE with the following details: 
    * email address 
    * first name 
    * last name 
    * city of residence 
    
* All Registered Users
  * May update their PROFILE details at any time. 
  * May engage with one MENTOR at a time as a single CLIENT.
  * May engage wite one CLIENT at a time as a MENTOR. 
  * May verify themelves through additional registration via the PROFILE page, to become a MENTOR.   

* CLIENT: 
  * May communicate through text messaging with one MENTOR at a time. 
  * May change ("request new") and begin messaging with a new MENTOR at any time. 
  * Edit personal profile including email, password, city of residence, and add/edit payment types. 

* MENTOR: 
  * 

## Run the App:

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

1. ```git clone https://github.com/FalmouthFalcons/iteration-3.git```
2. run ```ruby schema.rb``` in db folder
3. The database path environmental variable: in the files the database path is set to an
    enviromental variable which you will need to configure in you .zshrc or .bash file
        - follow these instructions:
        [instructions](https://gist.github.com/iest/58692bf1001b0424c257) 
        to create the variable and set it to the absolute path of the bangazon_sqlite3.sqlite3 file
4. Based on the context of the user's environment, perform some or all of the following actions/commands: 
  * Gemfile alterations 'bcrypt' and 'wdm'
  * bundle install 
  * rails db:seed 
  * rails db:migrate
  * rails server 
  * see localhost:3000 in your browser. 


## Built With

* Ruby
* Rails 
* SQL

## Authors

* **Adam White** 

## Acknowledgments

* Hat tip to Hannah Hall for helping us find solutions to our stumpers :)
