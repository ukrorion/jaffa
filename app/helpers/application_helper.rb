# frozen_string_literal: true

module ApplicationHelper
  def fas_icon(name, options = nil)
    content_tag :i, '', (options.presence || {}).merge(class: "fas fa-#{name}")
  end

  def far_icon(name, options = nil)
    content_tag :i, '', (options.presence || {}).merge(class: "far fa-#{name}")
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
          concat(content_tag(:div, class: "alert alert-#{css_class_name}") do
            concat(content)
            concat(button_tag(type: 'button', class: 'close', data: { dismiss: 'alert' }, aria: { label: 'Close' }) do
              content_tag :span, fas_icon(:times, width: '12', height: '12'), 'aria-hidden': true
            end)
          end)
        end
      end
    end
  end
end
