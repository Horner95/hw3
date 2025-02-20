class EntriesController < ApplicationController
  
  def show
    @contact = Contact.find_by({"id" => params["id"]})
    @company = Company.find_by({"id" => @contact["company_id"]})
  
  end

  def new
  
  end

  def create
 
    @place = Place.new

    @place["first_name"] = params["first_name"]
    @contact["last_name"] = params["last_name"]
    @contact["email"] = params["email"]
    @contact["phone_number"] = params["phone_number"]

  
    @contact["company_id"] = params["company_id"]

  
    @contact.save

  
    redirect_to "/companies/#{@contact["company_id"]}"
  end
end
