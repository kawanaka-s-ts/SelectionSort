require "spec_helper"
require "selection_sort"

describe SelectionSort do
  let(:selection_sort) {SelectionSort.new}
  describe "#asc_order" do
    it "要素を昇順に並び替えた配列を返す" do
      numbers = [*1..10].shuffle
      expect(selection_sort.asc_order(numbers)).to eq [*1..10]
    end
  end

  describe "#min_search" do
    context "複数の要素を持った配列が渡された時" do
      it "配列内の最小値を返す" do
        numbers = [5, 4, 1, 2, 3]
        expect(selection_sort.min_search(numbers)).to eq 1
      end
    end

    context "配列内に同じ値が複数ある場合" do
      it "配列内の最小値を返す" do
        numbers = [5, 5, 4, 4, 1, 1, 2, 2, 3, 3]
        expect(selection_sort.min_search(numbers)).to eq 1
      end
    end
  end
end
