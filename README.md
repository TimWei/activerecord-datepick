
# ActiveRecord Datepicker

Some Useful date-picking methods for ActiveRecord. probably support more methods in future.


## What does this do?

Providing familiar Date or DateTime class methods for ActiveRecord class.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-datepicker'
```
or install standalone

>> gem install 'activerecord-datepicker'
```ruby
require 'activerecord-datepicker'
```

## Usage

**Include Datepicker module in ActiveRecord Models**

``` ruby
class Post < ActiveRecord::Base
  include Datepicker::Model
end
```

**Date-picking records**

```
# filter by specific date
some_date = Date.new 2018, 4, 13
Post.pick_date some_date

# filter by date range
from = Date.new 2018, 4, 01
to   = Date.new 2018, 4, 30
Post.pick_date (from..to)

# listing today's records 
Post.today       

Post.all.first.today?    

```

**Custom column**

The default date picking column will be :created_at which given by active record itself, you can setup custom column for date picking.

``` ruby
class Post < ActiveRecord::Base
  include Datepicker::Model
  self.datepick_on = :post_date
end
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
