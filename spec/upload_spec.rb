describe 'Upload', :upload do 

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.png'
    end

    it 'Upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'Upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        #puts Capybara.default_max_wait_time // Verifica o tempo padrão do capybara
        #sleep 5

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'


    end



    after(:each) do
        sleep 4
    end

end

