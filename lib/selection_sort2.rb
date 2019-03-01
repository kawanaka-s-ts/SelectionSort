class SelectionSort
  def asc_order(numbers)
    index = 0
    # indexの値が要素数より小さい間繰り返す
    while index < numbers.size
      # jは現在のindexより上のindexすべて
      j = ((index+1)..numbers.size)
      # numbers_minは配列の最小値
      numbers_min = numbers[j].min
      # numbers[index]よりnumbers_minの方が小さい時
      if numbers[index] > numbers_min
        p numbers_min, numbers[index]
        numbers[index], numbers_min = numbers_min, numbers[index]
        p numbers
      end
      index += 1
    end
    numbers
  end
end

# numbers[index]とnumbers_minを入れ替えているのに
# numbersを出力すると、どちらも1が入っている…なぜ
