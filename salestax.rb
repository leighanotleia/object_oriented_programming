class Item

attr_accessor :sales_tax, :import_tax, :normal_price
attr_reader :quantity, :name

  def initialize(quantity, name, normal_price, sales_tax, import_tax)
    @quantity = quantity
    @name = name
    @normal_price = normal_price
    @sales_tax = sales_tax
    @import_tax = import_tax
  end

  def tax
    sales_tax = 0.10
    import_tax = 0.05

    if @sales_tax == true && @import_tax == true
      @normal_price * (sales_tax + import_tax)
    elsif @sales_tax == true && @import_tax == false
      @normal_price + sales_tax
    elsif @sales_tax == false && @import_tax == true
      @normal_price + import_tax
    elsif @sales_tax == false && @import_tax == false
      @normal_price.round

    end
  end

  def total_price
    @normal_price + tax
  end

end

class Reciept

    attr_accessor :items, :total, :total_sales_tax

    def initialize
      @items = []
      @total = 0
      @total_sales_tax = 0
    end

    def add(item)
      if item.is_a?(Item)
        @items << item
        @total_sales_tax += item.tax
        @total += item.total_price
      else
        "Not a class Item"
      end
    end

    def printout
    items.each do |item|
      puts "#{item.quantity} #{item.name}: #{(item.normal_price).round(2)}"
    end
      puts "Sales Tax: #{(total_sales_tax).round(2)}"
      puts "Total: #{(total).round(2)}"

  end
end


book = Item.new( 1, "book", 12.49, false, false )
music_cd = Item.new( 1, "music cd", 14.99, true, false)
chocolate_bar = Item.new( 1, "chocolate bar", 0.85, false, false)
box_of_chocolates = Item.new(1, "imported box of chocolate", 10.00, false, true)
imported_perfume = Item.new(1, "imported bottle of perfume", 47.50, true, true)
perfume = Item.new(1, "bottle of perfume", 20.89, true, false)
headache_pills = Item.new(1, "packet of headache pills", 9.75, false, false)

reciept1 = Reciept.new
reciept1.add(book)
reciept1.add(music_cd)
reciept1.add(chocolate_bar)
reciept1.printout

reciept2 = Reciept.new
reciept2.add(box_of_chocolates)
reciept2.add(imported_perfume)
reciept2.printout

reciept3 = Reciept.new
reciept3.add(perfume)
reciept3.add(box_of_chocolates)
reciept3.add(imported_perfume)
reciept3.add(headache_pills)
reciept3.printout
