class Helpers
  
  def self.current_user(session)
<<<<<<< HEAD
    if session[:user_id] != nil 
      User.find(session[:user_id])
    end 
  end 
  
  def self.is_logged_in?(session)
    #binding.pry
=======
    User.find(session[:user_id])
  end 
  
  def self.is_logged_in?(session)
>>>>>>> 7a284dccac4923c5762fcbc8a530cec2742dacb3
    Helpers.current_user(session) ? true : false
  end 
end