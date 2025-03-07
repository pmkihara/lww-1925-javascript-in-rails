# json.chave valor
if @monument.persisted?
  # se o monumento for salvo, mostrar as informações e o formulário em branco
  json.inserted_item render(partial: 'monument_info', formats: :html, locals: { monument_local: @monument })
  json.form render(partial: 'form', formats: :html, locals: { monument: Monument.new })
else
  # se o monumento não for salvo, mostrar os erros de validação
  json.form render(partial: 'form', formats: :html, locals: { monument: @monument })
end
