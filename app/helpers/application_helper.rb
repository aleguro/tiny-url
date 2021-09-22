module ApplicationHelper
	def redirect_url(url)
		"#{host}urls/#{url}"
	end

	def info_url(url)
		"#{host}urls/#{url}/info"
	end

  def host
    Rails.application.credentials[:host]
  end
end
