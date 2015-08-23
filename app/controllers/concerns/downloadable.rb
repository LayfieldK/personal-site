module Downloadable extend ActiveSupport::Concern 
  def send_to_user(args={}) 
    file = args[:filepath] 
    if File.exists?(file) and File.readable?(file) 
      send_file file 
    else
      redirect_to :back, notice: 'Unfortunately the requested file is not readable or cannot be located.' 
    end 
  end 
end