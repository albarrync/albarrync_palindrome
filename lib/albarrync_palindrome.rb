# frozen_string_literal: true

require 'albarrync_palindrome/version'

# Modifiy native String to include a method for detecting palindromes.
class String
  # Method determins if reverse is equal to input.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters of a string.
  def letters
    the_letters = []
    (0..length - 1).each do |i|
      the_letters << self[i] if self[i].match(/[a-zA-Z]/)
    end
    the_letters.join
  end

  private

  # Returns processed palindrome for detecting method.
  def processed_content
    letters.downcase
  end
end
