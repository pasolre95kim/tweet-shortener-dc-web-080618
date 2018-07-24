# Write your code here.
def dictionary
  replace = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end


def word_substituter(tweet)
  tweet_array = tweet.split(" ")
    revised_tweet = []
      tweet_array.collect do |word|
        if dictionary.keys.include?(word.downcase)
          revised_tweet << (dictionary[word.downcase])
        else
          revised_tweet << word
        end
      end
    revised_tweet.join(" ")
  end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end



def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  elsif tweet.length > 140
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
