class ContactsController < ApplicationController
  def show
    gmail = Contacts::Google.new(params[:token])
    @contacts = gmail.contacts
  end
end
