class House
  attr_reader :address, :rooms

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
    # @rooms.inject(0) { |sum, room| sum + room.area }
    @rooms.sum { |room| room.area }
  end

  def price
    @price.delete("$").to_i
  end

  def price_per_sqare_foot
    (price / area.to_f).round(2)
  end

  def sort_by_area
    @rooms.sort_by { |room| room.area }
  end

  def rooms_by_category
    @rooms.group_by { |room| room.category }
  end
end
