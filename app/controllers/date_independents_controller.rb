class DateIndependentsController < ApplicationController
  layout 'admin'

  before_action :require_admin
  before_action :find_date_independent, :except => [:index, :new, :create]

  helper :sort
  include SortHelper

  def index
    sort_init 'id', 'desc'
    sort_update %w(id path_pattern)
    @date_independents = DateIndependent.order(sort_clause)
  end

  def new
    @date_independent = DateIndependent.new
  end

  def create
    @date_independent = DateIndependent.new(date_independent_params)

    if @date_independent.save
      flash[:notice] = l(:notice_successful_create)
      redirect_to date_independent_path(@date_independent.id)
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @date_independent.attributes = date_independent_params
    if @date_independent.save
      flash[:notice] = l(:notice_successful_update)
      redirect_to date_independent_path(@date_independent.id)
    else
      render :action => 'edit'
    end
  rescue ActiveRecord::StaleObjectError
    flash.now[:error] = l(:notice_locking_conflict)
    render :action => 'edit'
  end

  def update_all
    DateIndependent.update_all(date_independent_params.to_hash)

    flash[:notice] = l(:notice_successful_update)
    redirect_to date_independents_path
  end

  def destroy
    @date_independent.destroy
    redirect_to date_independents_path
  end

  private

  def find_date_independent
    @date_independent = DateIndependent.find(params[:id])
    render_404 unless @date_independent
  end

  def date_independent_params
    params.require(:date_independent)
      .permit(
        :title, 
        :is_enabled,
        :project_pattern,
        :calculate_status_pattern
      )
  end

end
