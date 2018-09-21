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

 once eligible teams are sorted, fill in the teams and spreads on the wager form. have to do a length check on eligible arrays and make the proper wager choice, then fill in the teams using the proper arrays, gonna have to do a  while loop.

 new wager page:

 sort all the "on" teams into the proper arrays.

 Have to run checks on the lengths of the appropriate arrays and see how many eligible teams their are.  Also have to have checks in the wager for nu duplicate teams and no opponents of the same matchup.  And for future wagers must run a no opponents check so clients can't bet both sides to a game, maybe also have a check for no duplicate wagers.  Then submit wager once all checks are clear.

 for generating new wager:

 Loop through the sports that are listed in the form, isolate the teams that the client would bet on.  Have a random number genrator pick "heads or tails" on the team or opponent and the over and the under.  Have these picks stored in an array, loop throug said array and for each element loop through all selections made so far and ask if any are opposites, if they are set the picks equal to the selection.  This will make the client stay on the same side of a game no matter how many wagers they make.

 When choosing wager type, knowing how many available choices there are is important.  A wager type that needs five different teams can't be made when there is only two games.  Have to have a check for that.

 Creating the wager:

 Filter all on teams into their proper array

 get Amount

 get the length of the array that holds all possible choices for said bettor

 check to see if the length is less than 5, less than 4, less than 3, less than 2, less than 1.  Have the available wagers be held under each if statement.  In which if statement the code lands is the pool of choices for the wager type for said wager.

 Next is to pick the teams to fill the wager, the if statements here will work off of wager type.  As a selection is made, have that selection fall out of the array of choices.  To do that, once a selection is made and stored in a variable, loop through the selection array and ask where the selection and selection array are equal and cut that element from the array.  This way a selection can't appear in the same wager twice.

 once client, amount, type, and teams are set, the wager is ready to be saved.

 PAGES:

 Landing Page: A thematic page that speaks to the theme, has the login, and a link to sign up.

 SIGN UP: Holds the registration form for new members

 Your SportsBook, if user.clients == niil, show a message that they need to get some clients and how to get clients.  If they have users but no current wagers, display "You Haven't booked any bets today yet". If their is current wagers then this page will display today's action.

 Clients New: Fish for clients

 Wagers New: Action contracts

 Wagers Edit: Grade Action Contracts, display User bankroll here.

 Sports Book info: Client list with net profit/loss figure.  The net p/l for last ten.  The net p/l for various wager types.  This may be client/index.  Give aggregate info, for specific client info you click on the client and are brought to..

 Client/show page where the detailed stats of a specific client can be seen

 How to Play: explain the object for the game

 Well, the hard coding is complete.  Users get to own and operate their personal sports book equipped with real clients with varying betting habits, ten different wager options to choose from, a complete breakdown of all the stats for each client, clients as a whole, and the sports book.

 What's left to do?

 1. Sew up the details of the core functionality.
 2. Integrate fantasy player vs player betting.
 3. Figure out how leagues will work and integrate that.
 4. Launch to Heroku.
 5. Think about timezones and how start times will work.

 LEAGUE PLAY:

 There will have to be a league model that will take a user_id, league_password, league_clients.  This password will be distributed by the league creator: current_user.  League Players come to the site and hit the league play icon, where they are prompted for their league's password.  Once the password is entered they are brought to that league's index page where it will list the participants and the league creator.  League players will have to fill out a form that will take a user_id, league bank, other paramaters.  The user_id of the league creator will have access to the tools that create the league clients, or have the league clients created at the point that the league is created. Create three of each type of client and then just call the league client list and perform action in the normal way.  Give the current_user the ability to set which group of clients will make what kind of bets: "Straight", "Teasers", "Reverses + Parlays".  Have to find a way for the user to make that determination.  JS maybe for that.  Have each client class type listed and under each one have the three options.  They have to put no more than one client class in each group.  Once that is set then they can begin to book action. 








