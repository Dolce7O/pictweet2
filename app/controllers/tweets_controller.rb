class TweetsController < ApplicationController

def index
@tweets= Tweet.all.order("created_at DESC").page(params[:page]).per(5)
end

def new

end

def create
  Tweet.create(name: params[:name], image: params[:image],text: params[:text])
end

private
def test_params
  params.permit(:name,:image,:text)
end

end
