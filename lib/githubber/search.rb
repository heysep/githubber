module Githubber
	class Search
		include HTTParty
		base_uri "https://api.github.com"

		def initialize(auth_token)
			@headers = {
				"Authorization"		=> "token #{auth_token}",
				"User-Agent"		=> "HTTParty",
				"Accept"			=> "application/vnd.github.v3.text-match+json"
			}
		end

		def search_repo(query)
			self.class.get("/search/repositories", :headers => @headers, :query => {q: query})
		end
	end
end