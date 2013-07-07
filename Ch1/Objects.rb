class Conductor
  attr_accessible: :orchestra, :music
  
  def play_music piece_of_music
    orchestra.play piece_of_music
  end
end

class Orchestra
  attr_accessible: :percussion, :woodwind, :brass, :strings
  
  def play piece_of_music
    percussion.play piece_of_music.percussion_part
    woodwind.play piece_of_music.woodwind_part
    brass.play piece_of_music.brass_part
    strings.play piece_of_music.strings_part
  end
end

