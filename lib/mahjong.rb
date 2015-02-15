class Mahjong
  def self.agari?(tehai)
    # 3x4+2 = 14
    kootu_count(tehai) + jantou_count(tehai) == 4
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

  JANTOU_POSITIONS = {
    101 => "１",
    102 => "２",
    103 => "３",
    104 => "４",
    105 => "５",
    106 => "６",
    107 => "７",
    108 => "８",
    109 => "９",
    201 => "①",
    202 => "②",
    203 => "③",
    204 => "④",
    205 => "⑤",
    206 => "⑥",
    207 => "⑦",
    208 => "⑧",
    209 => "⑨",
    301 => "一",
    302 => "二",
    303 => "三",
    304 => "四",
    305 => "五",
    306 => "六",
    307 => "七",
    308 => "八",
    309 => "九",
  }

  # 雀頭：階段数の個数
  def self.jantou_count(tehai)
    count = 0
    tehai.chars.each do |char|
      first_char_position = JANTOU_POSITIONS.key(char)
      raise "Unknown char: #{char}" unless first_char_position

      char2 = JANTOU_POSITIONS[first_char_position+1]
      char3 = JANTOU_POSITIONS[first_char_position+2]

      current_jantou = "#{char}#{char2}#{char3}"

      if current_jantou.length == 3 && tehai.include?(current_jantou)
        count += 1
      end
    end
    count
  end
end
