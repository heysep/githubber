require "httparty"
require "pry"

require "githubber/version"
require "githubber/pull_requests"
require "githubber/issues"
require "githubber/search"
require "githubber/teams"

module Githubber
  # Your code goes here...
  	class App

	  	def initialize
	  		puts "What is your auth token?"
	  		token = gets.chomp
	  		@teams = Teams.new(token)
	  		@issues = Issues.new(token)
	  	end

  		def assign_hw(gist_id, org, repo, team, title)
			all_teams = @teams.get_teams(org)
			team_id = nil
			all_teams.each do |x|
				team_id = x["id"] if x["slug"] == team
			end

			members = @teams.get_members(team_id)

			body = @teams.get_gist_content(gist_id)

			members.each do |member|
				@issues.add_issue(member["login"], body, org, repo, title)
			end

		end

	end

	app = App.new
binding.pry
end
