class HomeController < ApplicationController
  def index
  end

  def logs
    #no-op testing endpoint
  end

  def diff
    `cd repo && git pull`
    @raw_output = `cd repo && git log origin/Develop ^origin/master --no-merges --cherry-pick --date=short --pretty=format:"%h%x09%an%x09%cd%x09%s" --date-order`
    @commits = @raw_output.split("\n")
  end
end
