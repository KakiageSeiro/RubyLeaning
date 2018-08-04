# テスト
require 'minitest/autorun'

# require を利用する場合（ruby実行フォルダを起点）
require './lib/fizz_buzz'

# require_relativeを利用する場合（このクラスファイルを起点）
# require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizzbuzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'fizz', fizz_buzz(3)
    assert_equal '4', fizz_buzz(4)
    assert_equal 'buzz', fizz_buzz(5)
    assert_equal 'fizz', fizz_buzz(6)
    assert_equal '7', fizz_buzz(7)
    assert_equal '8', fizz_buzz(8)
    assert_equal 'fizz', fizz_buzz(9)
    assert_equal 'buzz', fizz_buzz(10)
    assert_equal '11', fizz_buzz(11)
    assert_equal 'fizz', fizz_buzz(12)
    assert_equal '13', fizz_buzz(13)
    assert_equal '14', fizz_buzz(14)
    assert_equal 'fizz_buzz', fizz_buzz(15)
    assert_equal '16', fizz_buzz(16)
  end
end
