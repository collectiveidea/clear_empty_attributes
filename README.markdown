Problem
=======
When AR objects are saved, empty fields are saved as '' instead of nil.

 - Complicates queries for empty fields (`WHERE field IS NULL OR field = ''`)
 - Makes the use of `unless field.blank?` necessary (opposed to only `if field`)
 - Can lead to late-detected bugs because most of the time strings were `filled or ''` and suddenly they are `nil`
 - Some validations do not support `:allow_blank=>true`
 - Databases can handle `NULL` better & faster than empty strings (especially when using `LIKE`)

Solution
========
Defines an AR `before_validation` that sets empty Strings to nil.

Install
=======
`script/plugin install git://github.com/collectiveidea/clear_empty_attributes.git`  
OR  
`sudo gem install collectiveidea-clear_empty_attributes`  


Migration
=========
When you are switching to `clear_empty_attributes`, run this task
to remove any `''` strings/texts from your database.

    rake db:clear_empty_attributes
(only works when checked out or installed as plugin)

TODO
====
Should work with update_attribute / write_attribute too