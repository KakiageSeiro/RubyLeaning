# @をつけて変数宣言するとプロパティになる
# attr_accessorを使うとアクセサを自動生成し、クラス名.プロパティ名　のようにドットでつなげるインテリセンスが有効になる
# attr_readerでゲッターのみ生成


class HogeRuby
  # attr_accessor :bbb
  attr_reader :bbb

  def initialize(arg)
    @bbb = arg
  end
end

# 実行
b = HogeRuby.new('ebiebiebi')
# b.bbb = 'ebi2'
puts(b.bbb) # これの出力がebiebiebiになるclass
