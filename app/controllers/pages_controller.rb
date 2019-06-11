class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :peter]

  def home
  end

  def peter
    @service = Service.new
  end

   def fiona
    @service = Service.all
  end
end
