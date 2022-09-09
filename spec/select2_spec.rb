describe 'Select2', :select2 do

    describe('single', :single) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end


        it 'Seleciona ator por nome' do
            find('.select2-selection--single').click
            sleep 1 # usado apenas para fins de testes
            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 5# usado apenas para fins de testes
        end

        it 'Busca e clica no ator' do
            find('.select2-selection--single').click
            sleep 1# usado apenas para fins de testes
            find('.select2-search__field').set 'Chris Rock'
            sleep 1# usado apenas para fins de testes
            find('.select2-results__option').click
            sleep 1# usado apenas para fins de testes

        end


    end


    # describe('multiple') do
    #     before(:each) do
    #         visit '/apps/select2/multi.html'
    #     end
    # end

end
