class FacilitiesController < ApplicationController
  def index
    matching_facilities = Facility.all

    @list_of_facilities = matching_facilities.order({ :created_at => :asc })

    render({ :template => "facilities/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_facilities = Facility.where({ :id => the_id })

    @the_facility = matching_facilities.at(0)

    render({ :template => "facilities/show.html.erb" })
  end

  def create
    the_facility = Facility.new
    the_facility.throughput_id = params.fetch("query_throughput_id")
    the_facility.company_id = params.fetch("query_company_id")
    the_facility.padd_id = params.fetch("query_padd_id")
    the_facility.state = params.fetch("query_state")
    the_facility.city = params.fetch("query_city")
    the_facility.zip = params.fetch("query_zip")
    the_facility.site_type = params.fetch("query_site_type")

    if the_facility.valid?
      the_facility.save
      redirect_to("/facilities", { :notice => "Facility created successfully." })
    else
      redirect_to("/facilities", { :notice => "Facility failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_facility = Facility.where({ :id => the_id }).at(0)

    the_facility.throughput_id = params.fetch("query_throughput_id")
    the_facility.company_id = params.fetch("query_company_id")
    the_facility.padd_id = params.fetch("query_padd_id")
    the_facility.state = params.fetch("query_state")
    the_facility.city = params.fetch("query_city")
    the_facility.zip = params.fetch("query_zip")
    the_facility.site_type = params.fetch("query_site_type")

    if the_facility.valid?
      the_facility.save
      redirect_to("/facilities/#{the_facility.id}", { :notice => "Facility updated successfully."} )
    else
      redirect_to("/facilities/#{the_facility.id}", { :alert => "Facility failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_facility = Facility.where({ :id => the_id }).at(0)

    the_facility.destroy

    redirect_to("/facilities", { :notice => "Facility deleted successfully."} )
  end
end
