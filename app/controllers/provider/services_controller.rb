module Provider
  class ServicesController < ApplicationController

    def index
      @services = current_user.services
    end

  end
end