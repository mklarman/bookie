module SelectionsHelper

	def score_selections

		Group.all.each do |g|

			if g.id.to_i == @selection.group_id.to_i

				@the_group = g

			end

		end

		Ticket.all.each do |t|

			if t.date == @selection.date

				if t.name == @the_group.player1 

					@tickets_in_group.push(t)

				end

				if t.name == @the_group.player2

					@tickets_in_group.push(t)

				end 

				if t.name == @the_group.player3

					@tickets_in_group.push(t)

				end

				if t.name == @the_group.player4

					@tickets_in_group.push(t)

				end 

				if t.name == @the_group.player5

					@tickets_in_group.push(t)

				end
			end

		end

		@tickets_in_group.each do |t|

			@scores.push(t.score.to_i)

			if t.name == @selection.selection

				@users_pick = t

			end

		end


		@scores = @scores.sort

		@high_score = @scores.last

		if @users_pick.score.to_i == @high_score

			@result = "winner"

		else

			@result = "loser"

		end

	end

end
