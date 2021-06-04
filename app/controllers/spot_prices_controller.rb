class SpotPricesController < ApplicationController
  def index
    matching_spot_prices = SpotPrice.all

    @list_of_spot_prices = matching_spot_prices.order({ :created_at => :asc })

    render({ :template => "spot_prices/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_spot_prices = SpotPrice.where({ :id => the_id })

    @the_spot_price = matching_spot_prices.at(0)

    render({ :template => "spot_prices/show.html.erb" })
  end

  def create
    the_spot_price = SpotPrice.new
    the_spot_price.date = params.fetch("query_date")
    the_spot_price.wti = params.fetch("query_wti")
    the_spot_price.brent = params.fetch("query_brent")
    the_spot_price.nyh_conv = params.fetch("query_nyh_conv")
    the_spot_price.usgc_conv = params.fetch("query_usgc_conv")
    the_spot_price.rbob = params.fetch("query_rbob")
    the_spot_price.no_2_heating_oil = params.fetch("query_no_2_heating_oil")
    the_spot_price.nyh_usld = params.fetch("query_nyh_usld")
    the_spot_price.usgc_usld = params.fetch("query_usgc_usld")
    the_spot_price.la_usld = params.fetch("query_la_usld")
    the_spot_price.usgc_kero = params.fetch("query_usgc_kero")
    the_spot_price.mv_propane = params.fetch("query_mv_propane")

    if the_spot_price.valid?
      the_spot_price.save
      redirect_to("/spot_prices", { :notice => "Spot price created successfully." })
    else
      redirect_to("/spot_prices", { :notice => "Spot price failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_spot_price = SpotPrice.where({ :id => the_id }).at(0)

    the_spot_price.date = params.fetch("query_date")
    the_spot_price.wti = params.fetch("query_wti")
    the_spot_price.brent = params.fetch("query_brent")
    the_spot_price.nyh_conv = params.fetch("query_nyh_conv")
    the_spot_price.usgc_conv = params.fetch("query_usgc_conv")
    the_spot_price.rbob = params.fetch("query_rbob")
    the_spot_price.no_2_heating_oil = params.fetch("query_no_2_heating_oil")
    the_spot_price.nyh_usld = params.fetch("query_nyh_usld")
    the_spot_price.usgc_usld = params.fetch("query_usgc_usld")
    the_spot_price.la_usld = params.fetch("query_la_usld")
    the_spot_price.usgc_kero = params.fetch("query_usgc_kero")
    the_spot_price.mv_propane = params.fetch("query_mv_propane")

    if the_spot_price.valid?
      the_spot_price.save
      redirect_to("/spot_prices/#{the_spot_price.id}", { :notice => "Spot price updated successfully."} )
    else
      redirect_to("/spot_prices/#{the_spot_price.id}", { :alert => "Spot price failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_spot_price = SpotPrice.where({ :id => the_id }).at(0)

    the_spot_price.destroy

    redirect_to("/spot_prices", { :notice => "Spot price deleted successfully."} )
  end
end
