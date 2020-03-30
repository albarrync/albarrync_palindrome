# frozen_string_literal: true

require 'test_helper'

class AlbarryncPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AlbarryncPalindrome::VERSION
  end

  def test_non_palindrome
    refute 'apple'.palindrome?
  end

  def test_simple_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixed_case_palindrome
    assert 'RaceCar'.palindrome?
  end

  def test_punctuated_palindrome
    assert "Madam, I'm Adam.".palindrome?
  end
end
