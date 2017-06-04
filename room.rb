class Room
  attr_reader :number, :capacity, :guests, :songs

  def initialize(number, capacity)
    @number = number
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def guest_count()
    return @guests.count
  end

  # def check_in_guest(guest)
  #   @guests << guest
  # end

  def check_in_guest(guest)
    room_space = (@capacity) - (@guests.count)
    return "Cannot add guest, room full" if room_space <= 0
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def song_count
    @songs.count
  end

  def add_song(song)
    @songs << song 
  end

  def remove_song(song)
    @songs.delete(song)
  end

end