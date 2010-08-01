What is send?
=============
It’s a tiny wee ruby gem that is a fork of [Object#try](http://ozmm.org/posts/try.html)
and [Object#try from Rails](http://api.rubyonrails.org/classes/Object.html#M000027). It will *never* throw a NoMethodError (no matter the receiver), and returns nil
if called on a nil-class or if the method in the receiver does not exist.

Note on Patches/Pull Requests
-----------------------------

1. [Fork me!](http://github.com/Burgestrand/send-/fork)
2. Write tests for your new feature or bug fix (important, I don’t want
   to break your stuff in a future update by accident!)
3. Hack away on the code; make your tests pass.
4. Commit! Don’t touch Rakefile, version or git history in any of the 
   commits you want me to pick.
5. ???
6. Send me a pull request!
