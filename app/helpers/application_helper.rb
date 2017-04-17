module ApplicationHelper
  def true_false(input)
    input ? 'Yes' : 'No'
  end

  def correct_request?(request)
    request.product.user.username == current_user.username
  end

end
