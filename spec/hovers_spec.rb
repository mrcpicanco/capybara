describe 'Mouse Hover', :hovers do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        #Blade
        card = find('img[alt=Blade]')

        card.hover

        expect(page).to have_content 'Nome: Blade'

    end

    it 'Quando passo o mouse sobre o Pantera Negra' do
        #Pantera Negra
        card = find('img[alt="Pantera Negra"]')
        # Seletores com espaços precisam estar no formato String
        #Caso contrário enfrentará o seguite erro: 
        #Selenium::WebDriver::Error::InvalidSelectorError:
       # E invalid selector: An invalid or illegal selector was specified ('img[alt="Homem Aranha"]');

        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'

    end

    it 'Quando passo o mouse sobre o Homem Aranha' do
        #Homem Aranha
        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'

    end



    after(:each) do
        sleep 0.5 #Verificar resultado
    end
end

