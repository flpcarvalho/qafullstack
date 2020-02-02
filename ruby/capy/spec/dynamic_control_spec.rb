describe "Synamic Control", :dc do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  it "quando habilita o campo" do
    res = page.has_field? "movie", disabled: true
    puts res
    click_button "Habilita"
    sleep 5
    res = page.has_field? "movie", disabled: false
    puts res
  end
end
