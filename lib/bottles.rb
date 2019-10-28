class Bottles
  def initialize
    
  end

  def verse(bottles)
    howManyBottles = ""
    whatToDo = ""
    if (bottles < 1)
      howManyBottles = "No more bottles"
      whatToDo = "Go to the store and buy some more"
    elsif (bottles == 1)
      howManyBottles = "#{bottles} bottle"
      whatToDo = "Take it down and pass it around"
    else
      howManyBottles = "#{bottles} bottles"
      whatToDo = "Take one down and pass it around"
    end

    newCount = bottles - 1
    howManyNow = ""
    if (newCount < 0)
      howManyNow = "99 bottles"
    elsif (newCount == 0)
      howManyNow = "no more bottles"
    elsif (newCount == 1)
      howManyNow = "#{newCount} bottle"
    else
      howManyNow = "#{newCount} bottles"
    end


    <<-VERSE
#{howManyBottles} of beer on the wall, #{howManyBottles.downcase} of beer.
#{whatToDo}, #{howManyNow} of beer on the wall.
VERSE
  end
end