def dictionary 
  wordToBeSub = {
     "hello" => 'hi',
     "to" => "2",
    "two" => '2',
    "too" => '2',
    "for" => '4',
     "four"=> '4',
     "be"=> 'b',
     "you"=> 'u',
     "at"=> '@',
     "and"=> '&'
  }
end

def word_substituter(tw)
  tw.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |words|
    puts word_substituter(words)
end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).length > 140
    word_substituter(tweets)[0...137] + "..."
  else
    tweets
  end
end