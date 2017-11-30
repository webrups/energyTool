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
    @company.admin_id = current_admin.id

   if @company.save
      redirect_to admin_companies_path
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
      redirect_to admin_company_path
    else
      render action: 'edit'
    end
  end

  def delete
    Company.find(params[:id]).destroy
    redirect_to admin_companies_path
  end

  private

  def company_params
    params.require(:company).permit(:title, :id)
  end

end
