class CompaniesController < ApplicationController

  def show
    @company = current_user.company
  end

  def new
    @company = current_user.build_company unless current_user.company
  end

  def create
    @company = current_user.build_company(company_params)
    if @company.save
      current_user.update(company: @company)
      redirect_to action: :show, notice: t('flash.notice.company_created')
    else
      render :new, alert: t('flash.alert.company_not_created')
    end
  end

  def update
  end

  private

  def company_params
    params.require(:company).permit(:name, :tax_number, :certificate_number)
  end
end
