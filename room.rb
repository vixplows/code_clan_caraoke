class Room
  attr_reader :number, :guests, :songs, :capacity

  def initialize(number, capacity)
    @number = number
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def guest_count()
    return @guests.length
  end

  def check_in_guest(guest)
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

  def check_if_full()


    # return "Cannot add guest, room is full"
  end

end