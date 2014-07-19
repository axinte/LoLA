class GetGames	
	def import_games
		names = ["margerac"]

		summoners = Summoner.by_name(names)
		summoners.each do |summoner|
			Summoner.build_summoner(summoner).save
			CLIENT.game.recent(summoner.id)
		end
	end
end