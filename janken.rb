puts "-----------------------------"
puts "あっち向いてホイ付きじゃんけんをします。"
puts "じゃんけん・・・"
#じゃんけんメソッド
def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  select_number = gets.to_i #入力値を取得して数値へ変換
  cp_number = rand(3) #0,1,2からランダムで
  jankens = ["グー", "チョキ", "パー"]
  #戦わない処理
  if select_number == 3
    puts "ゲームを終了します。"
    puts "-----------------------------"
    exit
  end
  
  puts "ホイ！"
  puts "-----------------------------"
  puts "あなた: #{jankens[select_number]}を出しました！"
  puts "相手: #{jankens[cp_number]}を出しました！"
  puts "-----------------------------"
  
  #あいこ処理
  if select_number == cp_number
    puts "あいこです。あいこで・・・"
    return janken
  #プレイヤーが勝ちの処理→あっち向いてホイ呼び出し
  elsif (select_number == 0 && cp_number == 1) || (select_number == 1 && cp_number == 2) || (select_number == 2 && cp_number == 0)
    @janken_result = "win"
    puts "あなたの勝ちです！指をさす方向を選んでください。"
    p acchimuite_hoi
  #プレイヤーが負けの処理→あっち向いてホイ呼び出し
  else
    @janken_result = "lose"
    puts "あなたの負けです！顔を向ける方向を選んでください。"
    p acchimuite_hoi
  end
end

#あっち向いてホイメソッド
def acchimuite_hoi
  puts "-----------------------------"
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"
  
  select_direction = gets.to_i
  cp_direction = rand(4)
  direction = ["上", "下", "左", "右"]
  
  puts "ホイ！"
  puts "-----------------------------"
  puts "あなた: #{direction[select_direction]}"
  puts "相手: #{direction[cp_direction]}"
  puts "-----------------------------"
  #勝ちの処理
  if (select_direction == cp_direction) && (@janken_result == "win")
    puts "このゲームの勝者はあなたです！"
    puts "YOU★WIN"
    exit
  #負け処理
  elsif (select_direction == cp_direction) && (@janken_result == "lose")
    puts "このゲームの勝者は相手プレイヤーです！"
    puts "YOU lOSE.."
    exit
  #それ以外→じゃんけんに戻る
  else
    puts "じゃんけんからやり直しです。"
    puts "じゃんけん・・・"
    return janken
  end
end

janken