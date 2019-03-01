class SelectionSort
  def asc_order(numbers)
    index = 0
    # indexの値が要素数-1より小さい間繰り返す
    while index < numbers.size - 1
      # jは現在のindexより上のindexすべて
      j = (index+1)..numbers.size
      # 最小値のindexを取得
      min_index = numbers.index(min_search(numbers[j]))
      # numbers[index]よりnumbers[min_index]小さい時
      if numbers[index] > numbers[min_index]
        # 要素を入れ替える
        # hold_valueにnumbers[index]の値を保存
        hold_value = numbers[index]
        # numbers[index]にnumbers[min_index]の値を代入
        numbers[index] = numbers[min_index]
        # numbers[min_index]にhold_valueに保持していた値を代入
        numbers[min_index] = hold_value
      end
      # indexを1増やす
      index += 1
    end
    # 並べ替えた配列を返す
    numbers
  end

  def min_search(numbers)
    # iはindex
    i = 0
    # minは最小値
    # 配列の最初の数値を仮の最小値としてminに代入
    min = numbers[0]
    # iが要素数を超えるまで繰り返す
    while i < numbers.size
      # もし仮の最小値よりnumbers[i]の方が小さい時
      if min > numbers[i]
        # numbers[i]をminに代入
        min = numbers[i]
      end
      # iを1増やす
      i += 1
    end
    # 最小値を返す
    min
  end
end
