class Player
  def initialize
    @player_name = []
  end

  def empty_name(name)
    return 'Empty name can not be accepted. ' if name.empty?
  end

  def player_name(name)
    if @player_name[0].nil?
      @player_name[0] = name
      [true, name]
    elsif @player_name[0] == name
      [false, "Player name #{name} already taken. Please choose different one."]
    else
      [true, name]
    end
  end
end
