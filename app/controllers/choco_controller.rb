class ChocoController < ApplicationController
	before_action :create_values, only: :create
	def index
	end

	def new
	end

	def create
		@choco = Chocolate.create(:text => create_params[:text], :content => create_content,:name => params[:name],:image => "")
		if @choco.valid?
			redirect_to choco_path(@choco.id)
	    else
	    	redirect_to new_choco_path
	    end
	end

	def show
		@choco = Chocolate.find(params[:id])
	end

	private
	def create_params #textを保存
		params.permit(:text)
	end

	def create_values ##valueのみを取得する処理 "ダイヤモンド"
		params[:text]
		# params[:text] || ""
	end


end
