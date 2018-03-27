class Array
  def my_each(&prc)
    self.length.times do |i|
      prc.call(self[i])
    end
    self
  end

  def my_other_each
    self.length.times do |e|
      yield self[e]
    end
    self
  end


  def my_select(&prc)
    array = []
    self.my_each{|el| array.push(el) if prc.call(el)}
    array
  end

  def my_other_select
    ans = []
    self.my_other_each do |el|
      ans.push(el) if yield el
    end
    ans
  end
end
