describe "Mahjong" do
  let(:tehai){ "七七七②③④⑧⑧４５６" }

  xdescribe "#agari?" do
    it_is_asserted_by{ Mahjong.agari?(tehai) == true }
  end

  describe "#kootu_count" do
    it_is_asserted_by{ Mahjong.kootu_count(tehai) == 1 }
  end

  describe "#jantou_count" do
    it_is_asserted_by{ Mahjong.jantou_count(tehai) == 2 }
  end
end
