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
