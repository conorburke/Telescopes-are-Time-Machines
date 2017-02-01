module ApplicationHelper
  def gravatar_for(user, options = { size: 60 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=monsterid&s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end

  def parsed_tweet(tweet)
    _parsed_tweet = tweet.text.dup
    tweet.urls.each do |entity|
      html_link = link_to(entity.display_url.to_s, entity.expanded_url.to_s, target: '_blank')
      _parsed_tweet.sub!(entity.url.to_s, html_link)
    end
    _parsed_tweet.html_safe
  end
end
