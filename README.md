# The Tree Test

Please complete the following objectives by continuing development of the
TreeNode class. Be sure to add test coverage for all new functionality and
any bugs you fix.

When you're done, please zip up this directory and send it back to us. Thanks!

1.  Make any changes necessary to be able to run the tests by running
    `ruby tree_node_test.rb` at the command line. Fix any failing tests.

2.  Another developer has partially implemented TreeNode#name and
    TreeNode#name=, but failed to write any tests for that functionality. Add
    some test coverage to those methods.

3.  Add a predicate instance method to TreeNode that takes a single TreeNode
    instance as an argument. The method should return whether the supplied
    instance is a child node of the receiver.

4.  A bug has been detected in the code where a TreeNode that has a parent is
    assigned to a new parent node- the node is still included in the previous
    parent's children collection.

    Write a test for this behavior that fails, and then change the implementation
    of TestNode to fix the issue.

5.  Add a method to TreeNode that returns the path to that node. The path should
    be the names of each node in the chain, seperated by '>'. For example:
    "Parent > Child > Grandchild".

    The test for this method should test at least 3 levels.

6.  Add a method to TreeNode that takes a block and yields the node's children
    to the block one at a time.

7.  Add a new file to this directory that includes links to your GitHub
    profile, personal websites or projects, and your email address. Also
    note the version of Ruby you used to complete this exercise.
