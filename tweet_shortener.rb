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
  tweet_shortener = dictionary.split.keys do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
    word
  end
end
puts tweet_shortener.join(" ")
