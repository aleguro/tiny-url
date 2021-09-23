module ApplicationHelper

	# Returns to visit the full url
	def redirect_url(url)
		"#{host}urls/#{url}"
	end

	# Returns info url
	def info_url(url)
		"#{host}urls/#{url}/info"
	end

	# Returns the host, empty will default the host 
  def host
    ""
  end
end
