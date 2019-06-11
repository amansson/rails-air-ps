class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :peter, :fiona]

  def home
  end

  def peter

  end

   def fiona
    @service = Service.all
  end
end
