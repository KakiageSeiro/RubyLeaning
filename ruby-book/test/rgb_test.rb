# テスト
require 'minitest/autorun'

# require を利用する場合（ruby実行フォルダを起点）
require './lib/rgb'

# require_relativeを利用する場合（このクラスファイルを起点）
# require_relative '../lib/fizz_buzz'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#ffffff')
    assert_equal [4, 60, 120], to_ints('#043c78')
  end
end
