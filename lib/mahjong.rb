class Mahjong
  def self.agari?

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
end
