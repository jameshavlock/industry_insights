class PaddsController < ApplicationController
  def index
    matching_padds = Padd.all

    @list_of_padds = matching_padds.order({ :created_at => :asc })

    render({ :template => "padds/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_padds = Padd.where({ :id => the_id })

    @the_padd = matching_padds.at(0)

    render({ :template => "padds/show.html.erb" })
  end

  def create
    the_padd = Padd.new

    if the_padd.valid?
      the_padd.save
      redirect_to("/padds", { :notice => "Padd created successfully." })
    else
      redirect_to("/padds", { :notice => "Padd failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_padd = Padd.where({ :id => the_id }).at(0)


    if the_padd.valid?
      the_padd.save
      redirect_to("/padds/#{the_padd.id}", { :notice => "Padd updated successfully."} )
    else
      redirect_to("/padds/#{the_padd.id}", { :alert => "Padd failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_padd = Padd.where({ :id => the_id }).at(0)

    the_padd.destroy

    redirect_to("/padds", { :notice => "Padd deleted successfully."} )
  end
end
