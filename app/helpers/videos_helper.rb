module VideosHelper

	def get_embed_code(video_url)
		@youtube_id = video_url.embedded_url[/(=[\d\D]{5,}&{1})/].slice(1..-1)
		if @youtube_id[-1] == "&"
  		@youtube_id.slice!(-1)
  	end
  	@youtube_id
	end

end
