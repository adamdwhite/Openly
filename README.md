# Openly
> This application intends to provide an environment for 1-on-1 talk therapy and crisis intervention between peer users and licensed professionals.  _Services are provided to clients in a "freemium" model. MVP is a paid subscription, _ 

 * My goals in programming this application are as follows:
   * To build a full-stack application using Ruby on Rails. 
   * To incorporate the functionality of asynchronous instant messaging between _multiple types of_ users.
   * To build and maintain a safe environment to foster improved mental health and advice for clients seeking help.
   * To ensure secure confidentiality and security for communication and financial transactions. 

* Diagramming, mockups, and planning hosted on Trello: [https://trello.com/###endpoint]

## Table of Contents:
* Application Specifications
  * MVP
    * _Stretch Goals in italics_
* Use Cases / Stories
* Technology Used
* Wireframes: attachments WIP
* ERD: WIP link https://drive.google.com/file/d/1k38b-82gyJH1ziC127DMtf_lDkpSbcVB/view?usp=sharing

## Openly Application Specifications

* Visiting User may: 
  * Only view informational content, with prompts to create an Openly account. 
  * Not interact with Registered Users or Openly staff. 

* Registration: 
  * To authenticate, all users must create a single PROFILE with the following details (all required): 
    * email address
    * password
    * first name 
    * last name  
    * application terms of use agreement 

* ACCOUNT types:
  * All of the above is required of both users, plus...
  
  * CLIENT Account:
    * age (why we need this...)
    * zipcode (why we need this...)
    * Alias 
    * CLIENT terms of use agreement 
    * payment type _(optional in v.2)_
    * _become a CLIENT LISTENER_ 
            
  * COUNSELOR Account: 
      * payment type (to receive payment)
      * terms of use agreement 
      * Contract
      * SSN 
      * occupation title 
      * license state 

  * ADMINISTRATOR Account: 
    * Certified moderators of the application and its users' adherence to its terms of use. 

* All Registered Users may:
  * Update their REGISTRATION details at any time.
  * Exchange text messages with one COUNSELOR at a time as CLIENT.
  * Apply to become a COUNSELOR. 
     * User must verify themelves through additional registration via the PROFILE / ACCOUNT section, and undergo an approval process.   

* _Stretch
  * In summary of the above, there are four types of Users: CLIENTS, CLIENT LISTENERS, and COUNSELORS, and ADMINISTRATORS
  * Become a CLIENT LISTENER, to receive messages sent from CLIENTS.
  * Exchange text messages with one CLIENT LISTENER at a time, as a CLIENT, free of charge._ 

* TALKS guidelines:
  * Are begun by a CLIENT seeking a COUNSELOR, _or a CLIENT LISTENER_
    
  * There are only one each of two different types of conversation possible at any given time between users:
    * CLIENT and COUNSELOR. 
    * _CLIENT and CLIENT LISTENER._
    
  * Active TALK may be ended at either time by any party. If the talk is discontinued by a _CLIENT LISTENER_ or a COUNSELOR, a reason for discontinuation must be documented.  
  
  * All users are able to report another user for inappropriate behavior, at which point an ADMINISTRATOR will be notified. 
    * ADMINISTRATORS may temporarily disable any user's Openly account during the mediation procedure, or permanently as a result of violation(s) of user agreement or contract. 
  * There are "heated" words and terms which will bring each conversation to the attention of an ADMINISTRATOR. The purpose of this is to provide all users with quality counseling, and to protect all users from potential abuse.  
  
# Use Cases: 

## CLIENT Story: 
  * New TALK: 
    * Given a user is authenticated and using the application as a CLIENT 
    * When CLIENT clicks/taps a button to BEGIN a conversation with a CLIENT LISTENER or COUNSELOR
    * Then the application will perform a search for the nearest available CLIENT LISTENER
    * Then an automated message will show the CLIENT the status of the matching process, and provide both anonymized matched parties with a standard introductory greeting.
    EXAMPLE: message to CLIENT: "You have started a conversation with (CLIENT LISTENER) "JohnDoe". What would you like to talk about?" ... message to CLIENT LISTENER: "You have been matched with (CLIENT) "JaneDoe". Please standby to receive their messages. This conversation will expire in X hours if you do not respond."  

  * End TALK:
    * Given the CLIENT is in an active conversation with a CLIENT LISTENER or a COUNSELOR
    * When CLIENT decides to discontinue the conversation, by clicking / tapping the appropriate button within the TALKS DETAILS section.
    * Then CLIENT will be provided an appropriate confirmation screen, and will therafter be able to initiate a new TALK.
    
  * TALK DETAILS:
    * Given a CLIENT selects TALK DETAILS in a new or ongoing conversation with a CLIENT LISTENER or a COUNSELOR
    * When CLIENT updates this conversation with TOPICS from a predetermined list (see list of [topics])
    * Then both CLIENT and LISTENER/COUNSELOR may view these details. 
  
  * CLIENT: COUNSELOR Access:
    * Given a CLIENT chooses to access TALKS with a COUNSELOR 
    * When CLIENT enters a PAYMENT TYPE and agrees to the BILLING scenario within the ACCOUNT section
    * Then the CLIENT may begin a TALK with a professional COUNSELOR  

## CLIENT LISTENER Story:
  * VERIFICATION
    * Given the user is authenticated
    * When user selects the option to become a LISTENER within the ACCOUNT section 
    and has signed the terms of use agreement, 
    * Then the user may view and select a LISTEN toggle.
    
  * New TALK: 
    * Given the user has been VERIFIED as a CLIENT LISTENER
    * When the LISTEN ("active", "listening", etc.) toggle has been made "active" by the user
    * Then user will be notified when a matching CLIENT is determined, and TALK icon will indicate any unread messages from the CLIENT.  
   
   * End TALK:
     * The CLIENT LISTENER may discontinue the conversation at any point, but must provide a reason why, by way of a message prompt which is then sent to an ADMINISTRATOR.
   
## COUNSELOR story: 
  * VERIFICATION
    * Given the user is authenticated
    * When user selects the option to become a COUNSELOR within the ACCOUNT section 
    * Then user will be provided with form to enter VERIFICATION, and upon submission, an approval process will commence and confirmation will be provided: 
     * SSN
     * Occupation title 
     * License number
     * License state
     * Payment type 
     * Signed contract 
     * Counselor terms of use agreement.
  
  * New TALK: 
    * Given the user has been VERIFIED as a COUNSELOR
    * When the LISTEN ("active", "listening", etc.) toggle has been made "active" by the user
    * Then user will be notified when a matching CLIENT is determined, and TALK icon will indicate any unread messages from the CLIENT.   
   
  * End TALK:
    * The COUNSELOR may discontinue the conversation at any point, but must provide a reason why, by way of a message prompt which is then sent to an ADMINISTRATOR.


## To Run the App:

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

1. ```git clone https://github.com...```
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

Adam White 

## Acknowledgments

* Many thanks for the patient assistance from:  
Hannah Hall, Jisie David, Casey Dailey, Jim Vickery, Brooke Wittenberg
