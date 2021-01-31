class ContactsController < ApplicationController
 skip_before_action :verify_authenticity_token
  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts or /contacts.json
  #Send contacts form
  #Mohammad Shahnawaz
  # 01-02-2021
  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        ContactMailer.send_contact(@contact).deliver_later
        format.html { redirect_to new_contact_path, notice: "Contact enquiry form is submitted successfully." }
        format.json { render :new, status: :created, location: @contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :country_code, :phone_number, :message)
    end
end
