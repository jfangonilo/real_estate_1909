class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all { |room| room if room.category == category }
  end

  def area
    @rooms.inject(0) { |sum, room| sum + room.area }
  end

  def price_per_sqare_foot
    (price_as_float / area).round(2)
  end

  def price_as_float
    @price.delete("$").to_f
  end

  def sort_by_area
    @rooms.sort_by { |room| room.area }
  end

  def rooms_by_category
    @rooms.group_by { |room| room.category }
  end
end
