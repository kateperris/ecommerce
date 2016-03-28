if Rails.env.production?
	$redis = Redis.new(url: ENV["redis://h:asdfqwer1234asdf@ec2-111-1-1-1.compute-1.amazonaws.com:111"])
else
	$redis = Redis.new(:host => 'localhost', :port => 6379)
end