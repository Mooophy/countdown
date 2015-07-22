class Product
  attr_reader :barcode, :name, :cost

  def initialize barcode, name, cost
    @barcode = barcode
    @name    = name
    @cost    = cost
  end

end

class Store

  def initialize
    @products = {}
    @purchases = []
  end

  def add_product barcode, name, cost
    @products[barcode] = Product.new(barcode, name, cost)
  end

  def product_count
    @products.size
  end

  def calculate_cost barcodes
    barcodes.inject(0) {|total, barcode| total + @products[barcode].cost}
  end

  def print_receipt barcodes
    print_cost(barcodes) + print_total(barcodes)
  end

  def purchase barcodes
    @purchases << {time: Time.now, barcodes: barcodes, cost: calculate_cost(barcodes)}
    print_receipt(barcodes)
  end

  def purchase_summary
    summary = [
      ["Time","Number of Products","Cost"]
    ]
    @purchases.each do |p|
      summary << [p[:time].strftime("%d/%m/%Y"), p[:barcodes].size, p[:cost]]
    end
    summary
  end

  private
  def print_cost barcodes
    barcodes.inject("") do |receipt, barcode|
      product = @products[barcode]
      receipt + "#{product.name} $#{"%.2f" % product.cost}\n"
    end
  end

  def print_total barcodes
    "total $#{"%.2f" % calculate_cost(barcodes)}"
  end

end
