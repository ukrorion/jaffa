# frozen_string_literal: true

module ApplicationHelper
  %w[fas far].each do |prefix|
    define_method "#{prefix}_icon" do |name|
      content_tag :i, '',class: "#{prefix} fa-#{name}"
    end
  end

  def render_flash
    return if flash.empty?
    content_tag :section, class: 'flash' do
      content_tag :div, class: 'container' do
        flash.each do |label, content|
          css_class_name = case label
                           when :notice, 'notice' then 'success'
                           when :alert, 'alert' then 'danger'
                           end
          concat content_tag(:div, content, class: "alert alert-#{css_class_name}")
        end
      end
    end
  end
end
