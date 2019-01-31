class ChocoController < ApplicationController
	before_action :create_values, only: :create
	def index
	end

	def new
	end

	def create
		@choco = Chocolate.create(:text => create_params[:text], :content => create_content,:name => params[:name],:image => "http://psnews.jp/cat/uploads/2017/02/cat-1646566_1280.jpg")
		@choco.image = "あか時計.jpg"
		redirect_to choco_path(@choco.id)
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
