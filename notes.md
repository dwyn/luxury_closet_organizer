On nested forms
1. accepts_nested_attributes_for in the appropriate model
2. use the build method in the new action in the appropriate controller (shoes)
3. are your params structured properly
4. make sure your form (in the htm.erb file) is structured properly - one way to check that is with byebug
