require_relative 'balanced.rb'  
include Balanced

p check_length(break_into_chars("(()()())()"))
p open_close_check(break_into_chars("(()()())()"))
p balanced_string(break_into_chars("(()()())()"))