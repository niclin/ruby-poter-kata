class BookStore
  attr_accessor :items
  attr_accessor :total

  PRICE = 100

  DISCOUNT = {
    1 => 1,
    2 => 0.95,
    3 => 0.9,
    4 => 0.8,
    5 => 0.75
  }

  def initialize
   self.items = Hash.new(0)
   self.total = 0
  end

  def add(item_name, qty)
   self.items[item_name.to_s] += qty.to_i
  end

  def calculate
    buy_books = items.to_a.delete_if{ |i| i[1] == 0 }
    self.total = 0

    while buy_books.any?
      min_item = buy_books.shift

      discount_level = 1

      buy_books.each do |i|
        discount_level += 1

        i[1] = i[1] - min_item[1]
      end

      buy_books = buy_books.delete_if{ |i| i[1] == 0 }
      self.total += min_item[1] * discount_level * PRICE * DISCOUNT[discount_level]
    end

    self.total
  end
end
