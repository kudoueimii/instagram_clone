class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # ContactMailer.contact_mail(@contact).deliver
      redirect_to contacts_path, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
