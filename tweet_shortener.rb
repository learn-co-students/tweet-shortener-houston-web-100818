require 'pry'

def dictionary
    {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    array_tweet = tweet.split
    array_tweet.collect do |word|
        dictionary.each do |keyword, short_word|
            if word.downcase == keyword
                array_tweet[array_tweet.find_index(word)] = short_word
            end
        end
    end  
    array_tweet.join(" ")  
end

def bulk_tweet_shortener(array_of_tweets)
    array_of_tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
        tweet[0..136] + "..."
    else 
        selective_tweet_shortener(tweet)
    end
end