class ApplicationController < ActionController::Base
	def create_content #valueを変換する処理  "うんこ" =>"ダイヤモンド"
		# 上段は汚いワード
		create_values.gsub(/ruby|クソ|うんこ|しね|死ね|あほ|/,"ruby" => "python", "クソ" => "優しい","うんこ"=>"ダイヤモンド","しね" =>"好きすぎてたまりません","死ね" =>"好きすぎてたまりません",
			"あほ"=>"天才").##以下は罵りワード
		gsub(/aaa/,"aaa"=>"bbb")
	end
end
