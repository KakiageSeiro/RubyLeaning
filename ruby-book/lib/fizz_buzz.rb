def fizz_buzz(input)
  if (input % 15).zero?
    'fizz_buzz'
  elsif (input % 5).zero?
    'buzz'
  elsif (input % 3).zero?
    'fizz'
  else
    input.to_s
  end
end

def array_sample
  array = [1, 2, 3, 4, 5, 6]

  # 配列を出力
  array.each do |n|
    puts n
  end
  # 奇数を削除
  # delete_ifはブロックを作るが、&:メソッド名という記法で代用できる
  # &:は以下の条件を満たした場合のみ利用できる
  # 1,ブロック引数が１つしか存在しない
  # 2,ブロックの中で呼び出すメソッドに引数がない
  # 3,ブロック内で、ブロック引数に対してメソッドを一回呼び出す処理以外が存在しない
  array.delete_if(&:odd?)

  # 配列を出力 {}でブロック作ってみた（ロボコップに怒られる）（do endが推奨みたい）
  array.each { |n|
    puts n
  }
end

array_sample