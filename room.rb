class Room
  attr_reader :name, :capacity, :entry_fee, :till, :guests, :songs

  def initialize(name, capacity, entry_fee, till)
    @name = name
    @capacity = capacity
    @entry_fee = entry_fee
    @till = till
    @guests = []
    @songs = []
  end

  def guest_count()
    @guests.count
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_room_full(guest)
    guest_count() >= @capacity
  end

  def guest_can_afford_fee(guest)
    guest.wallet() >= @entry_fee
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

# Trying to write method that only checks in guests who can pay and into room that has space, and that takes money out of guest wallet and adds to room till
  # def guest_fully_check_in_to_room(guest)
  #   return "Cannot add guest" if check_room_full == true && guest_can_afford_fee == false
  #   check_in_guest(guest)
  #   @guest.count += 1
  #   @guest.wallet -= @entry_fee
  #   @till += @entry_fee
  # end

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