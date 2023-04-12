require_relative "pokemon"

class Player
  attr_reader :name, :pokemon
  def initialize(name, specie, poke_name, level = 1)
    @name = name
    @pokemon = Pokemon.new(specie, level, poke_name)
  end

  def select_move
    @pokemon.moves.each_with_index { |move, index| print "#{index+1}. #{move}      " }
    puts
    move = gets.chomp
    # @pokemon.current_move(move)
  end
end

# Create a class Bot that inherits from Player and override the select_move method
class Bot < Player
  def initialize(specie, level)
    bot_name = ["Wens", "Diego", "Rubocop", "Deyvi", "Jordi", "Ximena", "Andre", "Juanca", "Steven"].sample
    super(bot_name, specie, specie, level)
  end

  def select_move
    move = @pokemon.moves.sample
    # @pokemon.current_move(move)
  end
end

# player1 = Player.new("Steven", "Bulbasaur", "CapiGrass")
# player1.select_move

# bot = Bot.new("Bulbasaur", rand(6))
# p bot
# p bot.select_move