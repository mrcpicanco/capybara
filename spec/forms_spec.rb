
describe 'Forms' do

    it 'Login com sucesso' do
      visit 'https://training-wheels-protocol.herokuapp.com/login'

      fill_in 'userId', with: 'stark'
      fill_in 'password', with: 'jarvis!'

      click_button 'Login'

      expect(find('#flash').visible?).to be true

      #puts find("#flash").text
      #puts "Olá, Tony Stark. Você acessou a área logada!"

      expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

      #recursos do capybara
      expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'


    end
  
end

#Atenção: quando se quer verificar se um texto é igual/identico, usa-se o eql