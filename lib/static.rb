class Static < ActionController::Metal
  include AbstractController::Layouts
  include ActionController::Rendering
  
  append_view_path Rails.root.join("app", "views").to_s

  layout "application"
  
  def index
    render *env["template_to_render"]
  end
end