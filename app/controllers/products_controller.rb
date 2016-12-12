class ProductsController < ApplicationController
  # def index
  # end

  def index
    @products = Product.includes(:manufacture)

    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.xls { send_data @products.to_csv(col_sep: "\t") }
    end
  end

end
