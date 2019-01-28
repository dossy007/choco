class ChocoController < ApplicationController
	before_action :create_values, only: :create
	def index
	end

	def new
	end

	def create
		@choco = Chocolate.create(:text => create_params[:text], :content => create_content,:name => params[:name],:image => "http://psnews.jp/cat/uploads/2017/02/cat-1646566_1280.jpg")
		@post_id = @choco.id
		render :show
	end

	def show
		@choco = Chocolate.find[:id]
	end

	private
	def create_params #textを保存
		params.permit(:text)
	end

	def create_values ##valueのみを取得する処理 "ダイヤモンド"
		params[:text]
		# params[:text] || ""
	end

	def create_content #valueを変換する処理  "うんこ" =>"ダイヤモンド"
		# 上段は汚いワード
		create_values.gsub(/ruby|クソ|うんこ|しね|死ね|あほ|/,"ruby" => "python", "クソ" => "優しい","うんこ"=>"ダイヤモンド","しね" =>"好きすぎてたまりません","死ね" =>"好きすぎてたまりません",
			"あほ"=>"天才").##以下は罵りワード
		gsub(/aaa/,"aaa"=>"bbb")
	end
end
