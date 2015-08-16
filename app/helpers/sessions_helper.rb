module SessionsHelper
  def logged_in?
    session[:id] != nil
  end

  def current_user
    @current_teacher ||= Teacher.find_by(id: session[:id]) if session[:id]
  end
end
