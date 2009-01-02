Problem
=======
When AR objects are saved, empty fields are saved as '' instead of nil.

 - Complicates queries for empty fields (`WHERE field IS NULL OR field = ''`)
 - Makes the use of `unless field.blank?` necessary (opposed to only `if field`)
 - Can lead to late-detected bugs because most of the time strings were `filled or ''` and suddenly they are `nil`
 - Some validations do not support `:allow_blank=>true`
 - Datebases can handle `NULL` better & faster than `''` (especially when using `LIKE`)

Solution
========
Defines a AR `before_validation` that sets empty Strings to nil.

Install
=======
`script/plugin install git://github.com/grosser/clear_empty_attributes.git`  
OR  
`sudo gem install grosser-clear_empty_attributes`  


Migration
=========
When you are switching to `clear_empty_attributes`, run this task
to remove any `''` strings/texts from your database.

    rake clear_empty_attributes:clear_all_blank_strings MODELS=User,Movie,...
(only works when checked out or installed as plugin)