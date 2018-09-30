module IssueRecurrencePlugin
  class IssueRecurrencesViewListener < Redmine::Hook::ViewListener
    render_on :view_issues_show_description_bottom, partial: 'issues/issue_recurrences_hook'
    render_on :view_layouts_base_html_head, partial: 'layouts/issue_recurrence'
  end
end
