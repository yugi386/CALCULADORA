# encoding: utf-8
# Definição de Matchers:
RSpec::Matchers.define :is_number do
  match do |metodo|
    metodo == true
  end

  failure_message_for_should do |metodo|
    "#{metodo} Digite somente números"
  end

  failure_message_for_should_not do |metodo|
    "#{metodo} Números não são válidos"
  end

  description do
    "#{metodo} Deveria ser número"
  end
end

