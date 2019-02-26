# テスト
require 'minitest/autorun'

# require を利用する場合（ruby実行フォルダを起点）
require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    # 引数
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age=>20,
      :gender  =>  :female
    }
    TEXT

    # 期待結果
    expected = <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    TEXT

    # 結果を出力
    actual = convert_hash_syntax(old_syntax)
    # puts actual

    # 検証
    assert_equal expected, actual
  end
end