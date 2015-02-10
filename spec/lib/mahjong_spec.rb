describe "Mahjong" do
  let(:tehai){ "七七七②③④⑧⑧４５６①①①" }

  describe "#agari?" do
    using RSpec::Parameterized::TableSyntax

    where(:tehai, :expected) do
      "七七七②③④⑧⑧４５６①①①" | true
      "一二三②③④⑧⑧４５６①①①" | true
    end

    with_them do
      before do
        # debug
        puts "手牌:#{tehai}, 刻子 #{Mahjong.kootu_count(tehai)}, 雀頭 #{Mahjong.jantou_count(tehai)}"
      end
      it_is_asserted_by{ Mahjong.agari?(tehai) == true }
    end
  end

  describe "#kootu_count" do
    it_is_asserted_by{ Mahjong.kootu_count(tehai) == 2 }
  end

  describe "#jantou_count" do
    it_is_asserted_by{ Mahjong.jantou_count(tehai) == 2 }
  end
end
