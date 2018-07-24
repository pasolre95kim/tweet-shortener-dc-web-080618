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
