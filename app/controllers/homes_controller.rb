class HomesController < InheritedResources::Base
  def index 
  end
  private

    def home_params
      params.require(:home).permit(:title, :content)
    end

end
