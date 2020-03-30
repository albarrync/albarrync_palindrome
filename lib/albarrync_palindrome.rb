# frozen_string_literal: true

require 'albarrync_palindrome/version'

# Modifiy native String to include a method for detecting palindromes.
module AlbarryncPalindrome
  # Method determins if reverse is equal to input.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters of a string.

  def letters
    chars.select { |c| c.match(/[a-z]/i) }.join
  end

  private

  # Returns processed palindrome for detecting method.
  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

# Include module in Native class
class String
  include AlbarryncPalindrome
end
# Include module in Native class
class Integer
  include AlbarryncPalindrome
end
