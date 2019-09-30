require "pry"

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
        {:name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7},
        {:name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
        {:name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5},
        {:name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1}
        ]
      },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{
        :name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2},
        {:name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10},
        {:name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
        {:name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
        {:name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12}
        ]
      }
  }
end

#def good_practices
#  game_hash.each do |location, team_hash|
    #|key, value| are you ABSOLUTELY SURE what 'location'(:home, :away) and 'team hash' (the team hash) are? use binding.pry to find out!
#binding.pry
#    team_hash.each do |team_attribute, team_data|
      #are you ABSOLUTELY SURE what 'attribute' (:team_name, :color, :players) and 'team_data' ("Brooklyn Nets", arrays) are? use binding.pry to find out!

#binding.pry
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
#      team_data.each do |array_or_string|
#        array_or_string[0]
 #binding.pry
#      end
#    end
#  end
#end
#good_practices

def num_points_scored(inputname) #returns the number of points scored for player name
game_hash.each do |location, team_hash|
  team_hash[:players].each do |player|
    if player[:name] == inputname
    return player[:points]
    end
  end
end
end

def shoe_size(inputname) #returns the shoe size for that player
game_hash.each do |location, team_hash|
  team_hash[:players].each do |player|
    if player[:name] == inputname
    return player[:shoe]
    end
  end
end
end

def team_colors(nameofteam)#returns array of that team colors
game_hash.each do |location, team_hash|
    if team_hash[:team_name] == nameofteam
    return team_hash[:colors]
  end
end
end

def team_names#operates on the game hash to return an array of the team names
team_array = []
game_hash.each_with_index do |(location, team_data), n|
  team_array[n] = team_data[:team_name]
end
return team_array
end

def player_numbers(teamname)#returns an array of the jersey number's for that team
jersey_array = []
game_hash.each do |location, team_hash|
  if team_hash[:team_name] == teamname
  team_hash[:players].each_with_index do |player, n|
    jersey_array[n] = player[:number]
    end
  end
end
return jersey_array
end

def player_stats(player_name)#returns a hash of that player's stats
player_stats = {}
game_hash.each do |location, team_hash|
  team_hash[:players].each do |player_hash|
    if player_hash[:name] == player_name
      player_stats = player_hash
      player_stats.delete(:name)
    end
  end
end
return player_stats
end

def big_shoe_rebounds #return the number of rebounds associated with the player that has the largest shoe size
rebound = []
largestshoesize = 0
game_hash.each do |location, team_hash|
  team_hash[:players].each do |player_hash|
    if player_hash[:shoe] > largestshoesize
    largestshoesize = player_hash[:shoe]
    rebound[0] = player_hash[:rebounds]
    end
  end
end
return rebound[0]
end

def most_points_scored #Which player has the most points
  player = []
  mostpoints = 0
  game_hash.each do |location, team_hash|
    team_hash[:players].each do |player_hash|
      if player_hash[:points] > mostpoints
      mostpoints = player_hash[:points]
      player[0] = player_hash[:name]
      end
    end
  end
  return player[0]
end

def winning_team #Which team has the most points
teampoints = {}
starting_points = 0
game_hash.each do |location, team_hash|
    team_hash[:players].each do |player_hash|
    teampoints[location] = (starting_points + player_hash[:points])
  end
end
end

def player_with_longest_name #Which player has the longest name
player = []
longestname = 0
game_hash.each do |location, team_hash|
  team_hash[:players].each do |player_hash|
    if player_hash[:name].length > longestname
    longestname = player_hash[:name].length
    player[0] = player_hash[:name]
    end
  end
end
return player[0]
end

def long_name_steals_a_ton?#returns true if the player with the longest name had the most steals
  player_with_longest_name = []
  player_with_most_steals = []
  longestname = 0
  moststeals = 0
  game_hash.each do |location, team_hash|
    team_hash[:players].each do |player_hash|
      if player_hash[:name].length > longestname
      longestname = player_hash[:name].length
      player_with_longest_name[0] = player_hash[:name]
      end
      if player_hash[:steals] > moststeals
      moststeals = player_hash[:steals]
      player_with_most_steals = player_hash[:name]
      end
    end
  end
if player_with_most_steals = player_with_longest_name
return true
end
end
