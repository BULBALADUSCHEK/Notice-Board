class PagesController < ApplicationController

    def main
      redirect_to articles_path if logged_in?
    end

    def close
    end

    def expired
    end

end