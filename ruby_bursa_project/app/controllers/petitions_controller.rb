class PetitionsController < ApplicationController
		
	before_action :current_user, only: [:create, :new, :index]
	# before_action :find_user_by_user_id, only: [:index]

	def index
			@petitions = Petition.all.order('created_at DESC').limit(10)			
	end

	def new
		if current_user
			@petition = Petition.new
		else 
			redirect_to new_session_path
		end
	end

	def create
		@petition = Petition.create(petition_params)
		if @petition.save
			redirect_to petition_path(@petition)
		else
			render 'new'
		end
	end

	def show
		@petition = Petition.find(params[:id])
	end

	def my_petitions
		@my_petitions = current_user.petitions.order('created_at DESC').limit(10)	
	end

	private

	def petition_params
		params.require(:petition).permit(:title, :body).merge(user_id: current_user.id)
	end

	# def find_user_by_user_id
	# 	@user = User.find(p.user_id)
	# end

end
