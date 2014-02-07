module ApplicantsHelper
	def array_to_string_html str_value
		YAML.load(str_value).inject {|value, next_value| value + (value.present? ? ', ' : '') + next_value}
	end
	def errors_for(model, attribute)
  if model.errors[attribute].present?
    content_tag :span, :class => 'error_explanation' do
      model.errors[attribute].join(", ")
    end
  end
end
end
