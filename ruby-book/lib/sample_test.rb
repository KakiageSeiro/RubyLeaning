require 'minitest/autorun'
class SampleTest < Minitest::Test
  def test_sample_success
    assert_equal 'RUBY', 'ruby'.upcase
  end

  # 失敗パターン
  def test_sample1
    assert_equal 'RUBY', 'ruby'.capitalize
  end

  # 失敗パターン
  def test_sample2
    assert_equal 'RUBY', nil.upcase
  end
end
