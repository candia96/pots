class UsuarioSessionsController < ApplicationController
	

	def new
		@usuario= Usuario.new
	end
	def create
		if @usuario= login(params[:nombre],params[:pass])
			redirect_back_or_to(posts_path, message: "ya estas logeado")
		else 
			flash.now[:alert]= "algo salio mal"
			render action: new
		end
	end
	def destroy
		logout
		redirect_to(:usuarios, message: "Ya saliste")
	end


end