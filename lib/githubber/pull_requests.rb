module Githubber
	class PullRequests
    	include HTTParty
		base_uri "https://api.github.com"

		def initialize (auth_token)
			@auth = {
			"Authorization" 	=> "token #{auth_token} ",
			"User-Agent"				=>"HTTParty"
		}
		end

		def list_pulls(owner, repo)
			PullRequests.get("/repos/#{owner}/#{repo}/pulls", :headers=>@auth)
		end


		def update_user(options={})
				PullRequests.patch("/user", :headers=> @auth, body => options.to_json)
		end

		 
		def create_request(owner,repo)
				PullRequests.put("/repos/:{owner}/:{repo}/pulls", :headers=>@auth) 
		end

		def merge_commit(owner,repo)
					PullRequests.get("/repos:/owner:/repo/pulls:number/merge", :headers=>@auth)
		end
	end
end