module UsersHelper
# Helper method that is stating that user == current_user. For use with edit function
  def correct_user?(user)
    user == current_user
  end
end
