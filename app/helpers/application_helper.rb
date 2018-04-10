# frozen_string_literal: true

module ApplicationHelper
  %w[fas far].each do |prefix|
    define_method "#{prefix}_icon" do |name|
      content_tag :i, '',class: "#{prefix} fa-#{name}"
    end
  end
end
