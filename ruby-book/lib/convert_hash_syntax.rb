def convert_hash_syntax(old_syntax)
  # ハッシュ宣言時の=>記法をsinbol:記法に変換
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end