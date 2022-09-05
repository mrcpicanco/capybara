describe 'Caixa de opções', :dropdown do


  it 'item específico simples' do #com ID
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    select('Loki', from: 'dropdown') #funciona para elementos do tipo select e que possuem ID
    sleep 3 #temporário
  end

  #pode ser usada quando os itens não possuem ID, apenas nome da opção
  it 'item específico com o find' do #método de busca do capybara
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3
  end

  #Selecionar qualquer item da lista.
  #para executar apenas uma parte do código = rspec --tag @sample
  it 'Qualquer item', :sample do #sample usada para identificar a ação na hr de execução
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option #retorna um array e dentro dessa lista o método sample escolhe uma opção aleatória
    sleep 5
  end


end
