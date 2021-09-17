module OmniauthHelper
  def index2
    @coun = User.group("provider").count
  end
end
