module Githubber
	class Teams
		include HTTParty
		base_uri "https://api.github.com"

		def initialize(auth_token)
			@headers = {
				"Authorization"		=> "token #{auth_token}",
				"User-Agent"		=> "HTTParty"
			}
		end

	# Write API wrappers to : 

		# get the teams in an organization
		def get_teams(org)
			self.class.get("/orgs/#{org}/teams", :headers => @headers)
		end

		# get the members in a team
		def get_members(id)
			self.class.get("/teams/#{id}/members", :headers => @headers)
		end

		# get the "contents" of a gist
		def get_gist_content(id)
			response = self.class.get("/gists/#{id}", :headers => @headers)
			response["files"].first[1]["content"]
		end

	end
end