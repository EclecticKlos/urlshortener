get '/' do
  # Look in app/views/index.erb

  @all_urls = Urls.all

  erb :index
end

post '/' do
  u = Urls.new
  u.full_url = params[:link]
  u.short_url = "http://127.0.0.1:9393/" + Urls.last.id.to_s
  u.save

  redirect '/'
end
