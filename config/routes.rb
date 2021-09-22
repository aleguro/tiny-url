Rails.application.routes.draw do

	resources :urls, only: %i[index show create] do 
		member do 
			get 'info'
		end
	end 

	root to: 'urls#index'
end