get '/' do
  all_urls = Urls.all
  @shortened_urls = []
  @whole_urls = []

  all_urls.each do |url|
    @shortened_urls << url.short_url
  end

  all_urls.each do |url|
    @whole_urls << url.full_url
  end
end

