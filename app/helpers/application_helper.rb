module ApplicationHelper

  def apikey
    current_user.apikey
  end
end
