module ApplicationHelper
  # this method will embed the code from the partial
  def youtube_video(url)
    render :partial => 'shared/video', :locals => { :url => url }
  end 

  def active_page?(url)
  	current_page?(url)
  end 

  def get_url(string)
  	tag = Tag.find_by(name: string)
    tag.id if tag
  end
end
