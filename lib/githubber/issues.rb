module Githubber
	class Issues
		include HTTParty
		base_uri "https://api.github.com"

		def initialize(auth_token)
			@auth = {
				"Authorization" => "token #{auth_token}",
				"User-Agent"	=> "HTTParty"
			}
		end

		#implement 4 methods below =)

		# add a new issue
		def add_issue(owner, repo, title)
			options = { title: title }
			Issues.post("/repos/#{owner}/#{repo}/issues", :headers => @auth, :body => options.to_json)
		end

		# add a comment to an issue
		def add_comment(owner, repo, number, comment)
			options = { body: comment }
			Issues.post("/repos/#{owner}/#{repo}/issues/#{number}/comments", :headers => @auth, :body => options.to_json)
		end

		# list issues for a repo
		def list_issues
			Issues.get("/issues", :headers => @auth)
		end

		# close an issue
		def close_issue(owner, repo, number)
			Issues.patch("/repos/#{owner}/#{repo}/issues/#{number}", :headers => @auth, :body => { "state": "closed" }.to_json)
		end

	end
end