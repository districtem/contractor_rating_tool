class ContractorsController < ApplicationController
	def index
		@contractors = Contractor.all
	end

	def new
		@contractor = Contractor.new
	end

	def create
		@contractor = Contractor.new(params[:contractor])
		@contractor.save
		redirect_to contractors_path(id)
	end



end
