# Openly
> This application intends to provide an environment for 1-on-1 talk therapy and crisis intervention between peer users and licensed professionals.  _Services are provided to clients in a "freemium" model. MVP is a paid subscription, _ 

 * My goals in programming this application are as follows:
   * To build a full-stack application using Ruby on Rails. 
   * To incorporate the functionality of asynchronous instant messaging between Client and Counselor users.
   * To provide a safe environment in which to foster improved mental health and advice for clients seeking help.
   * To secure financial transactions between client / counselor / admin (entity).
   * To ensure confidentiality during conversation.  

* Diagramming, mockups, and planning hosted on Trello: [https://trello.com/###endpoint]


## Table of Contents:

* To Run the App
* Technologies Used
* Application Specifications
  * MVP
    * _Stretch Goals will be in italics throughout this document_
* Use Cases / Stories
* Wireframes: attachments WIP
* ERD: WIP link https://drive.google.com/file/d/1k38b-82gyJH1ziC127DMtf_lDkpSbcVB/view?usp=sharing


## To Run the App:

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

1. ```git clone https://github.com...```
2. run ```ruby schema.rb``` in db folder
3. The database path environmental variable: in the files the database path is set to an
    enviromental variable which you will need to configure in you .zshrc or .bash file
        - follow these instructions:
        [instructions](https://gist.github.com/iest/58692bf1001b0424c257) 
        to create the variable and set it to the absolute path of the Openly.sqlite3 file
4. Based on the context of the user's environment, perform some or all of the following actions/commands: 
  * Gemfile alterations...
  * bundle install 
  * rails db:seed 
  * rails db:migrate
  * rails server 
  * Browser: to properly demonstrate the app, open two seperate windows in your browser,
    one as http://localhost:3000 and one as http://127.0.0.1:3000/, logging in with / creating two separate accounts 

## Built With

* Ruby
* Rails 5
* ActionCable
* SQL
* Bootstrap, Tether, and SASS 
* Other assorted Gems 

## Openly Application Specifications

* Visiting User: 
  * View informational content, ABOUT link, with prompts to create an Openly account. 
  * May not interact with any Registered Users or Openly Admin. 

* REGISTERED User: 
  * To authenticate, all users must create a single PROFILE with the following details (all required): 
    * email address
    * password
    * type of account (CLIENT or COUNSELOR)
    * application terms of use agreement 

  
  * CLIENT Account:
    * first name --OPTIONAL
    * last name --OPTIONAL
    * age (why we ask for this...) --OPTIONAL
    
    * zipcode (why we need this...) --REQUIRED
    
    * Alias (default first Name) --OPTIONAL
    * Image (default Gravatar) --OPTIONAL
    
    * CLIENT terms of use agreement --REQUIRED
    
    * payment type --REQUIRED (for appointed COUNSELOR)  
    * account number --REQUIRED 
    
    * _become a CLIENT LISTENER_(OPTIONAL) 
            
  * COUNSELOR Account: 
    * first name --REQUIRED
    * last name --REQUIRED
    * age (why we ask for this...) --OPTIONAL
    
    * zipcode (why we ask for this...) --REQUIRED
    
    * payment type (to receive payment) --REQUIRED
    * account number --REQUIRED 
    
    * Image (default Gravatar) --OPTIONAL
    
    * COUNSELOR terms of use agreement --REQUIRED
    * Professional Contract --REQUIRED
    
    * SSN --REQUIRED
    * occupation title --REQUIRED 
    * license state --REQUIRED
    

  * ADMINISTRATOR Account: 
    * Are pre-registered with assigned accounts. 
    * Certified moderators of the application and its users' adherence to its terms of use. 
    * One ADMIN to one CONVERSATION.

* All Registered Users may:
  * Update their REGISTRATION details at any time.
  * Exchange text messages with one COUNSELOR at a time as CLIENT, or vise-versa.
  * Register as a CLIENT.
  * Register as a COUNSELOR. 
     * COUNSELORS must be verifies through the ACCOUNT section, and undergo an approval process.   

* _Stretch
  * In summary of the above, there are four types of Users: CLIENTS, CLIENT LISTENERS, and COUNSELORS, and ADMINISTRATORS
  * Become a CLIENT LISTENER, to receive messages sent from CLIENTS.
  * Exchange text messages with one CLIENT LISTENER at a time, as a CLIENT, free of charge._ 

* CONVERSATIONS guidelines:
  * Introductory: CLIENT seeking guidance 
  * CLIENT w COUNSELOR : are initialized by an ADMIN COUNSELOR upon the approval of a CLIENT 
  * _or a CLIENT LISTENER_
    
  * Types of conversation possible at any given time between users:
    * CLIENT w ADMIN
    * CLIENT w COUNSELOR, moderated by an ADMIN
    * _CLIENT and CLIENT LISTENER, moderated by an ADMIN_
    
  * Active CONVERSATION may be ended at either time by any party. 
  * If the talk is discontinued by an ADMIN, a COUNSELOR, or a _CLIENT LISTENER_, then a reason for discontinuation must be documented.  
  
  * All users are able to report another user for inappropriate behavior, at which point an ADMINISTRATOR will be notified. 
    * ADMINISTRATORS may temporarily disable any user's Openly account during the mediation procedure, or permanently as a result of violation(s) of user agreement or contract. 
  * There are "heated" words and terms which will bring each conversation to the attention of an ADMINISTRATOR. The purpose of this is to provide all users with quality counseling, and to protect all users from potential abuse.  
  
# Use Cases: 

## CLIENT Story: 
  * New CONVERSATION: 
    * One CLIENT to one ADMIN at a time. 
    * One CLIENT to one COUNSELOR (plus previous ADMIN) at a time.
    * Given a user is authenticated and using the application as a CLIENT 
    * When CLIENT clicks/taps a button to BEGIN a conversation with a COUNSELOR
    * Then the application will perform a search for the nearest available COUNSELOR
    * Then an automated message will show the CLIENT the status of the matching process, and provide matched parties with a standard introductory greeting.
    
    EXAMPLE: message to CLIENT: "You have started a conversation with (COUNSELOR) "JohnDoe". What would you like to talk about?" ... message to COUNSELOR: "You have been matched with (CLIENT) "JaneDoe". Please standby to receive their messages. This conversation will expire in X hours if you do not respond."  

  * End CONVERSATION:
    * Given the CLIENT is in an active conversation with a CLIENT LISTENER or a COUNSELOR
    * When CLIENT decides to discontinue the conversation, by clicking / tapping the appropriate button within the DETAILS section.
    * Then CLIENT will be provided an appropriate confirmation screen, and will therafter be able to initiate a new CONVERSATION.
    
  * CONVERSATION DETAILS:
    * Given a CLIENT selects DETAILS in a new or ongoing conversation with a CLIENT LISTENER or a COUNSELOR
    * When CLIENT updates this conversation with TOPICS from a predetermined list (see list of [topics])
    * Then both CLIENT and LISTENER/COUNSELOR may view these details. 
  
  * CLIENT: COUNSELOR Access:
    * Given a CLIENT chooses to access CONVERSATION with a COUNSELOR 
    * When CLIENT enters a PAYMENT TYPE and agrees to the BILLING scenario within the ACCOUNT section
    * Then the CLIENT may begin a TALK with a professional COUNSELOR  

## _CLIENT LISTENER Story:
  * _VERIFICATION
    Given the user is authenticated
    When user selects the option to become a LISTENER within the ACCOUNT section 
    and has signed the terms of use agreement, 
    Then the user may view and select a LISTEN toggle.
    
  * _New CONVERSATION: 
    Given the user has been VERIFIED as a CLIENT LISTENER
    When the LISTEN ("active", "listening", etc.) toggle has been made "active" by the user
    Then user will be notified when a matching CLIENT is determined, and CONVERSATION icon will indicate any unread messages from the CLIENT.  
   
   * _End TALK:
     The CLIENT LISTENER may discontinue the conversation at any point, and will be prompted to provide optional END-FEEDBACK as to why.
   
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


// To be continued... :)

## Authors

Adam D. White 

## Acknowledgments

* Many thanks for assistance from these kind folks:

Jim Vickery, Hannah Hall, Jisie David, Brooke Wittenberg, and Cohort 21 of The Nashville Software School. 
