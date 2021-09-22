class UrlsController < ApplicationController

  before_action :fetch_urls, only: %i[index create]
 
  def index
  	@url = Url.new
  end

  def info
    fetch_url
  end

  def show
    fetch_url
    track_visit
    redirect_to @url.url        
  end

  def create
  	
    @url = Url.new(url_params)

    if @url.save
  	 
     redirect_to '/urls'
    else

     render :index 
    end
  end

	private

  def track_visit
    visit = current_user
              .visits
              .find_or_initialize_by url_id: @url.id

    visit.increment_visit_count
  end

  def fetch_url
    @url = Url.includes(:visits)
              .find_by_short_url params[:id]
  end

  def fetch_urls
    @urls = Url.all
  end

	def url_params
		params.require(:url).permit(:url)
	end
end
