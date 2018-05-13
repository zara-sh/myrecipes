require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(Chefname: 'zara', email: 'zara@email.com')
  end

  test "shuold be valid" do
    assert @chef.valid?
  end

  test "chefname should be present" do
    @chef.Chefname = ''
    assert_not @chef.valid?
  end

  test "chefname shoulf be less than 30 chrachter" do
    @chef.Chefname = "a"*31
    assert_not @chef.valid?
  end

  test 'email should be present' do
    @chef.email = ''
    assert_not @chef.valid?
  end

  test "email shouldn't be more than 255 charachter" do
    @chef.email = "a"*256 + '@email.com'
    assert_not @chef.valid?
  end

  test 'eamil should accept correct format' do
    valid_emails = %w[user@email.com zara@gmail.com M.first@yahoo.ca john+smith@co.uk.org]
    valid_emails.each  do |valids|
      @chef.email = valids
      assert @chef.valid?, '#{valids.inspect} should be valid'
    end
  end

end
