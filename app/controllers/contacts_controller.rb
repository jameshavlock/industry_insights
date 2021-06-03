class ContactsController < ApplicationController
  def index
    matching_contacts = Contact.all

    @list_of_contacts = matching_contacts.order({ :created_at => :asc })

    render({ :template => "contacts/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_contacts = Contact.where({ :id => the_id })

    @the_contact = matching_contacts.at(0)

    render({ :template => "contacts/show.html.erb" })
  end

  def create
    the_contact = Contact.new
    the_contact.company_id = params.fetch("query_company_id")
    the_contact.email = params.fetch("query_email")
    the_contact.phone = params.fetch("query_phone")
    the_contact.facility_id = params.fetch("query_facility_id")
    the_contact.role = params.fetch("query_role")
    the_contact.notes = params.fetch("query_notes")

    if the_contact.valid?
      the_contact.save
      redirect_to("/contacts", { :notice => "Contact created successfully." })
    else
      redirect_to("/contacts", { :notice => "Contact failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_contact = Contact.where({ :id => the_id }).at(0)

    the_contact.company_id = params.fetch("query_company_id")
    the_contact.email = params.fetch("query_email")
    the_contact.phone = params.fetch("query_phone")
    the_contact.facility_id = params.fetch("query_facility_id")
    the_contact.role = params.fetch("query_role")
    the_contact.notes = params.fetch("query_notes")

    if the_contact.valid?
      the_contact.save
      redirect_to("/contacts/#{the_contact.id}", { :notice => "Contact updated successfully."} )
    else
      redirect_to("/contacts/#{the_contact.id}", { :alert => "Contact failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_contact = Contact.where({ :id => the_id }).at(0)

    the_contact.destroy

    redirect_to("/contacts", { :notice => "Contact deleted successfully."} )
  end
end
