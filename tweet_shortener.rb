# Write your code here.
def dictionary
  { "hello" => "hi",
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

def word_substituter(tweets)
   tweet = tweets.split(" ")
   tweet.each_with_index do |word, index|
      dictionary.each do |key, value|
         if word.downcase == key
            tweet[index] = value
         end
      end
   end
   tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
   tweets.each { |abbrev| puts word_substituter(abbrev) }
end


def selective_tweet_shortener(tweets)
end

def shortened_tweet_truncator(tweets)
end