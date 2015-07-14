## Coding practice
Goal: Teaching ruby to newbies

We will build a self-checkout machine used in a supermarket together.

### Task 1

#### TODO
As a tester, remove store_test.rb and recreate it from store.rb

As a developer, remove store.rb and recreate it to pass store_test.rb

As a passinated person, remove store_test.rb and store.rb and create them using TDD

#### Requirements

User can add an item to store
```ruby
store.add_item("0001", "apple", 10) # add $10 apple with barcode 0001
```
User can count stored items
```ruby
store.item_count() #=> 10 (10 items)
```
User can calculate total cost of given items
```ruby
store.calculate_cost(["0001", "0001"]) #=> 20 (two apples costs $20)
```
User can print receipt of given items
```ruby
store.print_receipt(["0001", "0001"]) #=>
apple $10
apple $10
total $20
```

### Setup environment
#### Using Windows + Rubymine (not free)
1. Install railsinstaller from http://railsinstaller.org/en (WINDOWS RUBY 2.1)
2. Install Rubymine from https://www.jetbrains.com/ruby/ (Not free but students can get 1 year license)
3. Clone this project
  * Run Rubymine
  * Welcome page -> check out from Version Control -> Git
  * Fill Repository info and click clone
    * Git Repository URL "https://github.com/ducktyper/countdown.git"
    * Parent Directory   "choose where you want to save this project in your computer"
    * Directory Name     "countdown"
4. Run test
  * toolbar -> click 'run' -> click 'Run' -> choose 1. All tests in countdown

#### Using Windows + Sublime Text (free)
1. Install railsinstaller from http://railsinstaller.org/en (WINDOWS RUBY 2.1)
2. Install Sublime Text from https://http://www.sublimetext.com
3. Clone this project
  * Open Terminal
  * Move to where you want to clone the project (Example: C:\Users\daniel\Desktop\projects)
  * git clone https://github.com/ducktyper/countdown.git
4. Open cloned folder from Sublime Text
5. Open score_test.rb file and click Ctrl-b to run test


Here is basic ruby syntax useful to this task.

### Define Class
#### class with no argument
```ruby
class Item
  def initialize()
  end
end
```

#### create with 1 argument
```ruby
class Item
  def initialize(name)
  end
end
```

### Create object
```ruby
item1 = Item.new()
item2 = Item.new("apple")
```

### Include other file
```ruby
require "./item" # read file item.rb under the current folder and insert it
```

### instance variable (start with @)
```ruby
class Item
  def initialize(name)
    @name = name
  end
  def print()
    puts @name
  end
end
Item.new("apple").print() #=> "apple"
```

### instance method
#### declear method
```ruby
class Item
  def initialize()
  end
  def price(quantity)
    10 * quantity # result of the last line returns automatically
  end
end
```

#### call method
```ruby
price = Item.new().price(5) #=> 50
```

### Condition
#### if statement
```ruby
if (1 == 1)
  puts "case1"
elsif (2 == 2)
  puts "case2"
else
  puts "case3"
end
```

#### switch statement
```ruby
case 1
when 1
  puts "1"
when 2
  puts "2"
end
```

### String
#### create string
```ruby
name = "apple"
```

#### append string
```ruby
name = "apple"
puts name + "orange" #=> apple orange
```

#### combine strings
```ruby
name = "apple"
puts "having #{name}" #=> having apple
```

### Array
#### create empty array
```ruby
array = []
```

#### add item to array
```ruby
array = []
array << "mlik"
```

#### get item by index
```ruby
array = ["apple", "orange"]
array[0] #=> "apple"
```

#### find index of item
```ruby
array = ["apple", "orange"]
array.index("apple") #=> 0
```

#### loop through each item
```ruby
array = ["apple", "orange"]
array.each do |item|
  puts item # execute this line for each item
end #=> "apple\norange"
array.each { |item| puts item } # same as above
```

#### map to create a new array with different value
```ruby
array = [1,2,3]
array.map do |item|
  item * 3
end #=> [3,6,9]
```

### Minitest
#### file name ends with "_test.rb"
#### basic format
```ruby
require 'minitest/autorun'
describe "math" do            # 'describe' block wraps 'it' blocks
  it "can sum two numbers" do # 'it' block represents single test
    assert_equal(2, 1 + 1)    # assertion
  end
end
```

#### assertion
```ruby
expected = true
actual = (1 + 1 == 2)
assert_equal(expected, actual)
```
