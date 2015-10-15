module ApplicationHelper
  # this method will embed the code from the partial
  def youtube_video(url)
    render :partial => 'shared/video', :locals => { :url => url }
  end 

  def active_page?(url)
  	current_page?(url)
  end 

  def get_url(string)
  	Tag.find_by(:name => string).id
  end
end
