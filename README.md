# Githubber

This is an app I built as part of The Iron Yard Academy.
I completed the Normal and Hard Mode objectives.

## Objectives

### Learning Objectives

* Better understand how to interact with external APIs
* Have more experience using Hashes and passing params to an API
* Get some practice branches, pull requests, and pair programming

### Performance Objectives

After completing this assignment, you be able to effectively use

* HTTParty to make API requests
* Headers to authenticate API requests
* Be able to create and switch branches with git

## Details

### Normal Mode

4 steps here...

1. Write a class to access the API as described in the above gist.

2. Merge the open pull requests with today's code into master.

   You are likely to encounter difficulty merging aka
   "merge conflicts". Consult Rickard or I for help!

3. Once both pull requests are merged, return to the master
   branch with `git checkout master`.

4. Get your master branch up to date with what is on github.

   If you are the owner of the *original repo*, getting master up
   to date is as simple as running `git pull origin master`.

   If you are the owner of the *forked repo*, you have to first
   teach your fork about the original copy by adding a remote.
   Run something like `git remote add upstream https://github.com/YOUR-PARTNER/THEIR-REPO`. Then you can run `git pull upstream master`.

### Hard Mode

Write some code in the main `lib/githubber.rb` file that
uses the classes to close your github issue and leave a comment
linking to your pull request.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/githubber. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

