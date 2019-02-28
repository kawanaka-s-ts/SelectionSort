require "spec_helper"
require "selection_sort"

describe SelectionSort do
  describe "#asc_order" do
    it "要素を昇順に並び替えた配列を返す" do
      selection_sort = SelectionSort.new
      numbers = [*1..10].shuffle
      expect(selection_sort.asc_order(numbers)).to eq [*1..10]
    end
  end
end
