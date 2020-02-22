require 'minitest/autorun'
require "./lib/node"

class TestNode < MiniTest::Test

	def test_new_returns_a_node
    subject = Node.new('Burke')
    assert_instance_of Node, subject
  end

  def test_returns_proper_value
    subject = Node.new('John')
    assert_equal 'John', subject.value
  end

end