class ThroughputsController < ApplicationController
  def index
    matching_throughputs = Throughput.all

    @list_of_throughputs = matching_throughputs.order({ :created_at => :asc })

    render({ :template => "throughputs/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_throughputs = Throughput.where({ :id => the_id })

    @the_throughput = matching_throughputs.at(0)

    render({ :template => "throughputs/show.html.erb" })
  end

  def create
    the_throughput = Throughput.new
    the_throughput.facility_id = params.fetch("query_facility_id")
    the_throughput.product = params.fetch("query_product")
    the_throughput.year = params.fetch("query_year")
    the_throughput.supply_details = params.fetch("query_supply_details")
    the_throughput.quantity = params.fetch("query_quantity")

    if the_throughput.valid?
      the_throughput.save
      redirect_to("/throughputs", { :notice => "Throughput created successfully." })
    else
      redirect_to("/throughputs", { :notice => "Throughput failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_throughput = Throughput.where({ :id => the_id }).at(0)

    the_throughput.facility_id = params.fetch("query_facility_id")
    the_throughput.product = params.fetch("query_product")
    the_throughput.year = params.fetch("query_year")
    the_throughput.supply_details = params.fetch("query_supply_details")
    the_throughput.quantity = params.fetch("query_quantity")

    if the_throughput.valid?
      the_throughput.save
      redirect_to("/throughputs/#{the_throughput.id}", { :notice => "Throughput updated successfully."} )
    else
      redirect_to("/throughputs/#{the_throughput.id}", { :alert => "Throughput failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_throughput = Throughput.where({ :id => the_id }).at(0)

    the_throughput.destroy

    redirect_to("/throughputs", { :notice => "Throughput deleted successfully."} )
  end
end
