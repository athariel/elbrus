if defined?(SimpleForm::FormBuilder)
  SimpleForm::FormBuilder.send(:include, FormErrorsHelper)
end