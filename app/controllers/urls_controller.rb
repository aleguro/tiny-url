class UrlsController < ApplicationController

  before_action :fetch_urls, only: %i[index create]
 
  # Returns all available urls 
  def index
  	@url = Url.new
  end

  # Visit the info of a given url
  def info
    fetch_url
  end

  # Track the visit to an url and redirects 
  def show
    fetch_url
    track_visit
    redirect_to @url.url        
  end

  # Creates a new url
  def create
  	
    @url = Url.new(url_params)

    if @url.save
  	 
     redirect_to '/urls'
    else

     render :index 
    end
  end

	private

  # Track the visit to a given url 
  def track_visit
    visit = current_user
              .visits
              .find_or_initialize_by url_id: @url.id

    visit.increment_visit_count
  end

  # Fetches an url by the short code
  def fetch_url
    @url = Url.includes(:visits)
              .find_by_short_url params[:id]
  end

  # Fetches all urls
  def fetch_urls
    @urls = Url.all
  end

	def url_params
		params.require(:url).permit(:url)
	end
end
