describe 'Caixa de opções', :dropdown do

    it 'item especifico simples' do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
        page.save_screenshot('screenshot/dropdown1.png')

    end

    it 'item especifico com o find' do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option',text: 'Scott Lang').select_option
        sleep 3

        page.save_screenshot('screenshot/dropdown2.png')

    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3

        page.save_screenshot('screenshot/dropdown3.png')

    end

end