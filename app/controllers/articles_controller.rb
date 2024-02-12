class ArticlesController < ApplicationController
  def index
    @projects = Project.all
  end
end
