Dado("que estamos na pagina inicial do site") do
    visit "https://wejump-automation-test.github.io/qa-test/"
  
  end
  
  Quando("eu clico em {string}, {string}, e {string}") do |string, string2, string3|
    click_link_or_button 'One'
    click_link_or_button 'Two'
    click_link_or_button 'Four'
  end
  
  Entao("válido a ausência dos mesmos.") do
    expect(page.has_button?("#btn_one")).to eq false
    expect(page.has_button?("#btn_two")).to eq false
    expect(page.has_button?("#btn_four")).to eq false
  end
  
  Quando("eu clico em {string}, {string}, e {string} no painel IFrame Buttons") do |string, string2, string3|
  within_frame(0) do 
    click_link_or_button 'One' 
    click_link_or_button 'Two'
    click_link_or_button 'Four'
  end
  end
  
  Quando("preencho o campo YourFirstName com {string}") do |nome|
    find("#first_name").set nome
  end
  
  Quando("clico no botão {string}") do |string|
    click_link_or_button 'One'
  end
  
  Quando("flego a opção OptionThree") do
    check 'OptionThree'
  end
  
  Quando("seleciono a opção ExampleTwo dentro da Select box") do
    select('ExampleTwo', from: 'select_box')
  end
  
  Entao("válido a imagem da Selenium-Webdriver") do
    expect(page).to have_css(".img-responsive-center-block") 
  end