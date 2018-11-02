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

 for grade wagers need to grab the wager values needed in erb and set them to the js variables, then pass those js variables through the proper functions and then set those values in the form.

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


 Touch Ups:

In My Sports Book

 Separate grade wagers from current wagers.  On grade wager page, let them see net results from graded wagers.  Maybe add in a drop down that lets them select the date and have the wagers appear.

 Fish For Clients

 This page needs a general cleaning up and centering.  Make the user's client total big and visible.

 For Client List

 List clients by group name, all clients of a certain stakes grouped together.

 Possible league format:

 Tournament style where users enter and have to start winning clients and then booking their action.  This lasts over the whole tournament which could last one day or 365 days.  Maybe the site iteself hosts the yearly tournament which is the 365 day calendar.  The winner is crowned the king bookmaker and gets to win the bookmakers cup.  But community members can start private tournaments too and set the duration, set how many entrants.  Maybe tournaments are run all the time and community members can enter into them.  They win points for first, second, thrid.  World series of bookmaking.

 revisit the sports book data page and revamp the style.  Sort clients by stakes and clean it up as well as maybe add some stats.

 You have to go in and test for real so fix the dislay on grade.  Grade has to turn display off, and then I can enter new matchups and turn the display on.  When you loop through teams you have to look for team name as well as the date of the wager has to match the date of the matchup.

 Write in the snippet of code that will let you work around the bug on wagers new.


 LEAGUE PLAY:

 A league will have a form that gets filled out.  The form will take a user_id - which will be "1" or admin user id or can be the users id if they are creating a league.

 League will also take a start date and end date and a password.

 To start a league a user will need to fill out the league form and then invite who they want.  Those users come to the site, enter the League play tab, enter the password for the league and then brought to that leagues home page, there they are prompted to got to the league client page to get their clients. Can automate this.  league clients will take a league id and a user id along with all the rest.  league wagers will also take a league id and a user id.

 going to need a standings page and a page where everyone gets to see everyone elses action..? and the score of the tournament.  How can I issue tournament points like for a first second and third?

 would have to score their tournament history.  How?  grab all their wagers that have a league id, get league id and look up all users that have said id in wagers.  Gather those users up and score all the wagers from the tournament and place the finishers, pay ten percent of the tournament field rounded up.  so if there are 65 people then pay 6 places.  Start paying two places at five people, anything less is pay 1.  Start to pay three people at 10, start to pay 4 people 20, start to pay 5 at 35, start to pay 6 at 60, and then 10% from then on out.

 pay 1 structure: 2 points
 pay 2 structure: 4 points, 2 points
 pay 3 structure: 9, 6, 3
 pay 4 structure: 16, 12, 8, 4
 pay 5 structure 25, 20, 15, 10, 5
 pay 6 structure: 36, 30, 24, 18, 12, 6

 I can create a function that calculates their tournament points.

 for leagues, the users need the league password, once they have that they are brough to that leagues information and actions so any form submitted will have said leagues id.

 create functions to score league games.


 The first time to the league home page, the page first loads your clients for the league.

 TO GENERATE LEAGUE WAGERS:

 must use a show page of a league client, that way get the league client id and league id.

 on the league home page page, first check if the current date is after the end date.  If it is after the end date then show the final standings of the league, if it is the last day or before then show them their client roster and link to the wager page(league_client_show), and standings.

 if on the wager page:

 find the league_id, league_client_id of all their clients.  store the ids in an array.  Check the clients to see if they qualify, the ids of the qualified clients stored in an array.

 grab quaified[0] from the array and using their setting generate wagers.  Generate amount, type, and teams then auto submit and redirect back.  If qualified.length == 0 then display ALL ACTION IN.

 back on the league home page have an option to see the action of participants.

 for grading, have a link to the edit/league wager of the first wager and on that page redirect to the url of the next wager to be graded(just like in wagers controller).

 have to loop through teams and look where display == on. and sort matchups into sport containers.  use the functions I have might be easiest.

 qualify clients

 Get clients picks

 Let client pick games

 fix oppo picks

 get amount

 get bet type

 fill bet

 submit

 Things to do:

 debug league wager grading

 write all functions that grab you the standings of a league

 create the league action page: where all open action for all players is displayed.

 A place to talk trash maybe.

 Set up the password for the private leagues, have to be sent to the private leagues show page after putting in the password.

 Need design for all league pages, and need to make custom JS forms for gui.

 Need to see if I can make js forms for the sign in and sign up

 Need to design a home page

 Need to make the how to play page, would like the mini links to bring people to the section of the document they want.


 League play is pretty much set up.

 To do list:

 make private leagues work

 set the grading to use the date of the team and the date of the wager

 design league pages:

 Leagues show

 league_clients show

 league_wagers show

 league_wagers edit

 The Home Page
 

 PRIVATE LEAGUES

 set up the input that will have the password entered into it, and it will direct you to the correct league home page where the user will be loaded with the league clients.  Have to hook up for the private leagues.  That should not be too hard.

 GRADING

 have to filter grading by wager date and team date and then by t.name, t.opp, etc.  Make sure the date on the wager matches the daye on the matchup.  Then I can have a team involved in multiple matchups.

 KEY PAGES FOR DESIGN:

 User show page.  Going to need to design a page that shows the links to the league home pages that the user is in, also maybe thir scores in the leagues.  Give them their total bets backed and a total across all leagues.  Show a bunch of stats for them.  On this page you can show them their open action across all leagues.  Here also would be how many points they have earned.

 League Home Pages.  This will have the client roster, league standings, maybe a breakdown on how each player is doing for each bet category.  Have to see what I can fit.

 League Wagers Show.  This displays the open league action.  Mostly done, see about any details.

 League_Client_edit.  See if the js form looks good enough.  Have to make up more js forms.

 need to make league clients dependent on leagues maybe, definately have to add a validation for the league password.  It must be unique.


<div class = hide>
 
 	11/2/18 - FANTASY/SUICIDE GAME

 	A pool can be started much like a league in the bookie game.  A pool can be public or private.  Go to the pools home page where you will get a list of the particpants who are still alive in the pool, also on this page are the pool of players for you to choose from, the player must choose the player from the group that will score the highest points for the night.  If they do then they advance to the next day or week of the tournament.  Pools will have to be desiganted to a sport or to all sports.  Player pools will be generated for the pools when needed.  Players will click on the name and that name will be saved into the ruby form.  Players will make selections.  Selections will take a user_id and a pool_id.  Selections will then get graded/edited and be desiganted a winner or a loser.  once a player gets a losing selection in a pool then they are out and no longer see the player pool and are given a notification in its place that tells them they are out and their name is taken off of the participants list.  Also have to list the selections for the players as they come in.

 	I see a users controller of course, pool controller, selections controller, player controller.  Have to figure out how to form the player pools.  Going to have to count the players who are "on" and separate them into tiers: Top Tier Players, Mid Tier Players, Scrubs.  Pools will be made up of players of varying teirs.  No more than two of each teir in a group.  That would be a group of 6.  Group could be less than six as well, anywhere from 2 - 6 players in a group.

</div>







    








