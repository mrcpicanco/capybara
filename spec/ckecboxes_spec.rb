describe 'Caixas de Seleção', :checkboxe do
  #para todos os cenários, será necessário uma visita na página abaixo:
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

# check e uncheck funcionam tanto para id como name
  it 'Marcando uma opção' do
      check('thor')

  end

  it 'Desmarcando uma opção' do
      uncheck('antman')
  end

  it 'Marcando com find set true' do
    find('input[value=cap]').set(true)
  end

  it 'Desmarcando com find set false' do
    find('input[value=guardians').set(false)
end


  after(:each) do
    sleep 5
  end


end 