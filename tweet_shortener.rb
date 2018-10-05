require 'pry'
# Write your code here.
def dictionary
  {"hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  words = dictionary
  array = tweet.split(" ")
  keys = words.keys
  array.each_with_index do |word, index|
    keys.each do |key|
      if key == word.downcase
        array[index] = words[key]
        end
      end
    end
    array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |item|
    puts word_substituter(item)
    end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  long = selective_tweet_shortener(tweet)
  if long.length > 140
    long.slice!(137..(long.length-1))
    long = long + "..."
    end
    long
    #binding.pry
end