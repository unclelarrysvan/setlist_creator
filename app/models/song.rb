class Song < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :artist

  def self.calculate_total_length(songs)
    minutes = 0
    seconds = 0
    songs.each do |song|
      minutes += song.minutes
      seconds += song.seconds
    end
    added_minutes = seconds / 60
    seconds = seconds % 60
    minutes += added_minutes
    if seconds < 10
      seconds = "0#{seconds}"
    end
    return "#{minutes}:#{seconds}"
  end
end
