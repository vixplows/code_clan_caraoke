class Room
  attr_reader :number, :guests, :songs

  def initialize(number)
    @number = number
    @guests = []
    @songs = []
  end

  def guest_count
    @guests.count
  end

  def check_in_guest(guest)
    @guests << guest
  end

  # def check_out_guest(guest)
  ## check out the whole person, check by name by looping through that they no longer exist.
  #   @guests.delete(guest)
  #   return @guests.count
  # end

  # def add_song(song)
  #   @songs << song
  #   return @songs.count
  # end

end