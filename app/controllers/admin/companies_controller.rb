class Admin::CompaniesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @companies = current_admin.companies.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

   if @company.save
      redirect_to action :index
   else
     render action: 'new'
   end
  end

  def edit
    @company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update_attributes(company_params)
      redirect_to action: 'show', id: @company
    else
      render action: 'edit'
    end
  end

  def delete
    Company.find(params[:id]).destroy
    redirect_to action :index
  end

  private

  def company_params
    params.require(:company).permit(:title, :id)
  end

end
