class Entry
  def to_math(input)
    array = input.split(" ")
    string = ""

    array.each_with_index do |x, index|
      if index.even?
        string << x
      else
        string << x
      end
    end

    p eval(string)
  end
end
