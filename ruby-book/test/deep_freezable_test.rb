# テスト
require 'minitest/autorun'

# ruby実行フォルダを起点にしてrequire
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  # Minitestでのsetupメソッドは、各テストメソッド実行前に必ず呼び出される
  # def setup
  # end

  def test_deep_freeze
    # 配列の値を検証
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    # 配列自身がフリーズされていること
    assert Team::COUNTRIES.frozen?
    # 配列の要素全てがフリーズされていること
    assert Team::COUNTRIES.all?(&:frozen?)
  end

  def test_deep_freeze_to_hash
    # ハッシュの値は正しいか？
    assert_equal(
        {'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
        Bank::CURRENCIRS
    )

    # ハッシュ自身がfreezeされているか？
    assert Bank::CURRENCIRS.frozen?
    # ハッシュの要素（キーと値）が全てfreezeされているか？
    assert Bank::CURRENCIRS.all? {|key, value| key.frozen? && value.frozen?}
  end
end