class StocksController < ApplicationController
  def index
    matching_stocks = Stock.all

    @list_of_stocks = matching_stocks.order({ :created_at => :desc })

    render({ :template => "stocks/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_stocks = Stock.where({ :id => the_id })

    @the_stock = matching_stocks.at(0)

    render({ :template => "stocks/show.html.erb" })
  end

  def create
    the_stock = Stock.new
    the_stock.all_products = params.fetch("query_all_products")
    the_stock.crude = params.fetch("query_crude")
    the_stock.total_gasoline = params.fetch("query_total_gasoline")
    the_stock.kero = params.fetch("query_kero")
    the_stock.diesel = params.fetch("query_diesel")
    the_stock.resid = params.fetch("query_resid")
    the_stock.date = params.fetch("query_date")

    if the_stock.valid?
      the_stock.save
      redirect_to("/stocks", { :notice => "Stock created successfully." })
    else
      redirect_to("/stocks", { :notice => "Stock failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_stock = Stock.where({ :id => the_id }).at(0)

    the_stock.all_products = params.fetch("query_all_products")
    the_stock.crude = params.fetch("query_crude")
    the_stock.total_gasoline = params.fetch("query_total_gasoline")
    the_stock.kero = params.fetch("query_kero")
    the_stock.diesel = params.fetch("query_diesel")
    the_stock.resid = params.fetch("query_resid")
    the_stock.date = params.fetch("query_date")

    if the_stock.valid?
      the_stock.save
      redirect_to("/stocks/#{the_stock.id}", { :notice => "Stock updated successfully."} )
    else
      redirect_to("/stocks/#{the_stock.id}", { :alert => "Stock failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_stock = Stock.where({ :id => the_id }).at(0)

    the_stock.destroy

    redirect_to("/stocks", { :notice => "Stock deleted successfully."} )
  end
end
