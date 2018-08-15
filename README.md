# README

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

Users:

 sports_book_name
 admin: boolean


 Clients:

 user_id
 first_name
 last_name
 type
 stakes
 quantity

 Wager:

 user_id
 client_id
 type
 amount
 teams
 spreads
 date
 net_result
 client_bankroll
 user_bankroll
 rating: winner or loser
 graded: boolean

 Matchup:

 date
 sport
 fav
 underdog
 fav_line
 dog_line
 total
 fav_score
 dog_score
 fav_straight_bet
 fav_two_teas
 fav_three_teas
 fav_five_teas
 dog_straight_bet
 dog_two_teas
 dog_three_teas
 dog_five_teas
 total_result
 total_result_two
 total_result_three
 total_result_five
 updated

 I have a protype for the client fishing, wager generation, and wager grading.  Alot of detail needed, especially for the grading(all the math for the wager analysis).  The last controller to set-up is the matchups.  The matchups will give me access to the score of the game, total which are two variables needed for the grading wagers math.  The problem is how do I matchup the proper matchup with the bet.  I think it will be best to grab the matchups by the date.  Loop them and put all the winners ATS in one array, the losers in another.  Have to do for every type of teaser as well.  Then ask if the teams in their bet are in the winning array for the proper bet.  If they are then credit their bankroll and debit the user's bankroll, vice versa if they lose.

 How do I start the bankrolls for the users and the client.  They are not set to be determined until the first wager is made.  Have to make the clients BR at the time of creation and then set that equal to the var in the form.  For the user BR will need some if statements.  If users.wagers.graded == false then the bankroll is 10k, if true the bankroll is users.wagers.last.graded.bankroll.

 I'm thinking to use Team models instaed of matchups.  Teams allows me to be specific and compare a teams results vs the teams in a wager.  The form can cover how that teams does against the spread.

 the calculations:

 for grade wagers need to grabe the wager values needed in erb and set them to the js variables, then pass those js variables through the proper functions and then set those values in the form.

 for the reverses can use js functions and pass the spreads into the function and just search for ML lines and write those exceptions. Scratch that.  I think we handle in ruby.  If doing by teams: I need spread.

 Sign up.  Get a client.  Generate client action.  View action.  Grade wagers.

 To generate client action:  need access to the client form.  Need arrays on the page that house choices for bet amounts, bet types, teams(the name of the Team model; loop through teams and look for the "on" field, if on then put team.name in the array.)

 select the client;
 Read the client attributes from his form for stakes and bet types.  Each response points to an array or choices.  Take a sample of those arrays to fill in wager form.  Run if statements off of wager type to see how many teams you need.  Sample the team arrays wich will be the team names of the Team model that is turned om.  Seperate teams by sport and totals by sport.  For totals need to add an attribute to the team model: "Under Ravens 48.5"

 for new wager

 once eligible teams are sorted, fill in the teams and spreads on the wager form. have to do a length check on eligible arrays and make the proper wager choice, then fill in the teams using the proper arrays, gonna have to do a 


