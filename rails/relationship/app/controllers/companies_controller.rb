class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]

  # GET /companies
  def index
    @companies = Company.all

    render json: @companies
  end

  # GET /companies/1
  def show
    render json: @company
  end

  # POST /companies
  def create
    @company = Company.new(company_params)
    @company.contacts = (relationship_params[:contacts] || [])

    if @company.save
      render json: @company, status: :created, location: @company
    else
      render json: { errors: [@company.errors] }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /companies/1
  def update
    if @company.update(company_params)
      @contact.contacts = relationship_params[:contacts] if relationship_params[:contacts]

      render json: @company
    else
      render json: { errors: [@company.errors] }, status: :unprocessable_entity
    end
  end

  # DELETE /companies/1
  def destroy
    @company.destroy
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:data).require(:attributes).permit(
        :additional_info,
        :address,
        :customer_id,
        :email,
        :name,
        :phone,
        :website
      )
    end
end
