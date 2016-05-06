require 'administrate/base_dashboard'
class ProjectDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    slug: Field::String,
    title: Field::String,
    institution: Field::String,
    url: Field::String,
    description: Field::Text,
    created_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :title
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :slug,
    :title,
    :institution,
    :url,
    :description,
    :created_at
  ].freeze

  FORM_ATTRIBUTES = [
    :title,
    :institution,
    :url,
    :description
  ].freeze
end
