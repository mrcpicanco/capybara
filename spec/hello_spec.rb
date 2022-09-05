#Suíte e testes

describe "Primeiro Script" do

  it "Visitar a página" do
    visit "https://training-wheels-protocol.herokuapp.com/"
    expect(page.title).to eql "Training Wheels Protocol"
    #informações importantes:
    #O visit e o page.tile são do capybara
    #Mas quem valida é o rspec - expect to eq

  end



end
