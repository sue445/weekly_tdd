class Mahjong
  def self.agari?(tehai)
    kootu_count(tehai) + jantou_count(tehai) == 3
  end

  # 刻子: 同じ牌が3つ揃っている個数
  def self.kootu_count(tehai)
    tehai_uniq_chars = tehai.chars.uniq

    count = 0
    tehai_uniq_chars.each do |char|
      count += 1 if tehai.count(char) == 3
    end
    count
  end

  # 雀頭：階段数の個数
  def self.jantou_count(tehai)
    count = 0
    tehai.chars.each do |char|
      current_jantou = "#{char}#{char.succ}#{char.succ.succ}"
      count += 1 if tehai.include?(current_jantou)
    end
    count
  end
end
