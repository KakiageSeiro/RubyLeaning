# 単位の変換
UNITS = { m: 1.0, ft: 3.28, in: 39.37 }.freeze

# 変換前の単位の長さ / 変換前の単位の比率 * 変換後の単位の比率
# １メートルをインチに変換する場合は以下
# 1 / 1.0 * 39.37 = 39.37
#
# 1フィートをメートルに変換する場合は以下
# 1 / 3.28 * 1.0 = 0.30
def convert_length(length, form: :m, to: :m)
  (length / UNITS[form] * UNITS[to]).round(2)
end