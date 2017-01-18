namespace :dev do
	task :user_create => :environment do
		User.delete_all
		psk_config = Rails.application.config_for(:psk)
		puts psk_config["psk"]
		user = User.create!(:email => "afu@hotmail.com", :password => psk_config["psk"])	

	end
end