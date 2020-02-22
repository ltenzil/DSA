require 'minitest/autorun'
require "./lib/linked_list"

class TestLinkedList < MiniTest::Test
	def test_ll_initialize
		ll = LinkedList.new
		assert_instance_of LinkedList, ll
		assert_nil ll.head
	end

	def test_ll_insert
		ll = LinkedList.new
		ll.insert("Hey")
		assert_instance_of Node, ll.head
		assert_equal "Hey", ll.head.value
	end

	def test_ll_insert_to_head
		ll = LinkedList.new
		ll.insert("Hey")
		ll.insert("How are you")
		assert_instance_of Node, ll.head.next
		assert_equal "How are you", ll.head.next.value
	end

	def test_ll_search
		ll = LinkedList.new
		ll.insert("Hey")
		ll.insert("How are you")
		ll.insert("Fine")
		assert_instance_of Node, ll.search("Fine")
		assert_equal "Fine", ll.search("Fine").value
		assert_equal "Record Not Found", ll.search("fine")
	end

	def test_ll_get_node_by_index
		ll = LinkedList.new
		ll.insert("Hey")
		ll.insert("How are you")
		ll.insert("Fine")
		ll.insert("Well")
		assert_equal "Fine", ll.get_node_by_index(2)&.value
		assert_nil ll.get_node_by_index(5)
	end

	def test_ll_add_nodes_at
		ll = LinkedList.new
		ll.insert("Hey")
		ll.insert("How are you")
		ll.insert("Fine")
		ll.insert("Well")
		ll.add_nodes_at(2, "New at 2")
		assert_equal "New at 2", ll.get_node_by_index(2)&.value 
		ll.add_nodes_at(0, "New head")
		assert_equal "New head", ll.head&.value
		assert_equal "New at 2", ll.get_node_by_index(3)&.value 
	end

	def test_ll_delete_nodes_at
		ll = LinkedList.new
		ll.insert("Hey")
		ll.insert("How are you")
		ll.insert("Fine")
		ll.insert("Well")
		ll.delete_nodes_at(0)
		assert_equal "How are you", ll.head&.value
		ll.add_nodes_at(2, "Hey")
		assert_equal "Hey", ll.delete_nodes_at(2)&.value
	end
end