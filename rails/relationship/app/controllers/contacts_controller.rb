class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  def index
    @contacts = Contact.all

    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)
    @contact.company = relationship_params[:company]
    @contact.offers = (relationship_params[:ofers] || [])
    @contact.projects = (relationship_params[:projects] || [])

    if @contact.save
      render json: @contact, status: :created, location: @contact
    else
      render json: { errors: [ @contact.errors ] }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      @contact.company = relationship_params[:company] if relationship_params[:company]
      @contact.offers = relationship_params[:offers] if relationship_params[:offers]
      @contact.projects = relationship_params[:projects] if relationship_params[:projects]

      render json: @contact
    else
      render json: { errors: [ @contact.errors ] }, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:data).require(:attributes).permit(
        :additional_info,
        :address,
        :company,
        :company_id,
        :email,
        :family_name,
        :given_names,
        :phone,
        :title,
        :website
      )
    end
end
