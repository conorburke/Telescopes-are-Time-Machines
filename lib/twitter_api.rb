class TwitterAPI
  def self.public_tweets
    client.user_timeline('NASA', count: 7, exclude_replies: true)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
    end
  end
end