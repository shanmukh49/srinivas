module ApplicantsHelper
	def array_to_string_html str_value
		YAML.load(str_value).inject {|value, next_value| value + (value.present? ? ', ' : '') + next_value}
	end
end
