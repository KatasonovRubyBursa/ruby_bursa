class PetitionsController < ApplicationController
  before_action :authorize, only: [:create, :new]
  before_action :find_petition, only: [:edit, :show, :update, :destroy]
  before_action :current_user, only: [:create, :new, :index]

  def index
    @petitions = Petition.all.order('created_at DESC').limit(10)			
  end

  def new
      @petition = Petition.new
  end

  def create
    @petition = Petition.create(petition_params)
    if @petition.save
      redirect_to petition_path(@petition)
    else
      render 'new'
    end
  end

  def edit    
  end

  def update
    if @petition.errors.empty?
      @petition.update_attributes(petition_params)
      redirect_to petition_path(@petition)
      flash[:success] = "Петиция обновлена"
    else
      render 'edit'
    end
  end

  def show
    @petition = Petition.find(params[:id])
  end

  def my_petitions
  	if current_user
      @my_petitions = current_user.petitions.order('created_at DESC').limit(10)	
    end
  end
  
  def destroy
    @petition.destroy
    redirect_to my_petitions_petitions_path
    flash[:success] = "Петиция удалена"
  end
  
  private

  def petition_params
    params.require(:petition).permit(:title, :body).merge(user_id: current_user.id)
  end

  def find_petition
    @petition = Petition.find(params[:id])
  end
end
