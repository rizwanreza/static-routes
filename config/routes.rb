Routes::Application.routes.draw do |map|  
  def rendering(*args)
    app = Static.action(:index)
    lambda do |env|
      env["template_to_render"] = args
      app.call(env)
    end
  end

  match "/about", :to => rendering("about")  
  match "/contact", :to => rendering("contact_static")
  match "/faq", :to => rendering("faq_static")
end