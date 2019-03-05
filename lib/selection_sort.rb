class SelectionSort
  def asc_order(numbers)
    # indexに0を代入する
    index = 0
    # indexの値が要素数より小さい間繰り返す
    while index < numbers.size
      # jは比較対象の数値のindex
      j = index + 1
      # jが要素数より小さい間繰り返す
      while j < numbers.size
        # min_indexは最小値のindex
        # min_indexにindexを代入
        min_index = index
        # numbers[index]を仮の最小値とする
        # 仮の最小値よりもnumbers[j]の方が小さければ
        if numbers[j] < numbers[index]
          # 最小値のindexにjの値を代入
          min_index = j
        # ifここまで
        end
        # jを1増やす
        j += 1
        # 要素を入れ替える
        numbers[index], numbers[min_index] = numbers[min_index], numbers[index]
      end
      # indexを1増やす
      index += 1
    end
    # 並べ替えた配列を返す
    numbers
  end
end
