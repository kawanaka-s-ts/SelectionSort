require "spec_helper"
require "selection_sort"

describe SelectionSort do
  let(:selection_sort) {SelectionSort.new}
  describe "#asc_order" do
    context "複数の要素を持つ配列を渡した場合" do
      it "要素を昇順に並び替えた配列を返す" do
        numbers = [*1..10].shuffle
        expect(selection_sort.asc_order(numbers)).to eq [*1..10]
      end
    end

    context "要素の並べ替えが、必要ない配列を渡した場合" do
      it "要素を昇順に並び替えた配列を返す" do
        numbers = [0, 1]
        expect(selection_sort.asc_order(numbers)).to eq [0, 1]
      end
    end

    context "要素の並び替えが、必ず必要な配列を渡した場合" do
      it "要素を昇順に並び替えた配列を返す" do
        numbers = [1, 0]
        expect(selection_sort.asc_order(numbers)).to eq [0, 1]
      end
    end
  end
end
