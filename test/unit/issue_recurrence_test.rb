require_relative '../test_helper'

class IssueRecurrenceTest < ActiveSupport::TestCase
  fixtures :issues, :users

  def setup
    @issue1 = issues(:issue_01)

    User.current = users(:alice)
  end

  def test_new
    @issue1.update!(start_date: '2019-04-08', due_date: '2019-04-12')
    ir = IssueRecurrence.new(issue: @issue1)
    assert ir
    ir.save!
  end
end
