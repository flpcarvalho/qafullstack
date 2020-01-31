describe 'Meu primeiro script' do

    it 'visitar a página' do

        visit 'https://training-wheels-protocol.herokuapp.com/'
        puts page.title

        page.save_screenshot('screenshot/login.docx')
    end

end