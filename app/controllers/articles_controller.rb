class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update]
    #after_create :expiration_date

    def show
    end

    def index
      @articles = Article.relevant
    end
    
    def new
      @article = Article.new 
    end

    def edit        
    end

    def update
      if @article.update(article_params)  
        flash[:notice] = "Advertisement was updated successfully."
        redirect_to @article
      else
        render 'edit'
      end
    end

    def create
      @article = Article.new(article_params)       
      if @article.save
        flash[:notice] = "Advertisement was created successfully."
        redirect_to @article
      else
        render 'new'
      end
    end

  
    def expiration_date
      if !@article.expiration_date.nil? && @article.expiration_date > DateTime.now
        redirect_to @article
      else
        render 'new'
      end
    end

    private

    def set_article
      @article = Article.find(params[:id]) 
    end

    def article_params
      params.require(:article).permit(:title, :description, :status, :expiration_date)
    end

end