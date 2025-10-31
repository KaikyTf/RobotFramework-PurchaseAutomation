*** Settings ***

Resource     main.robot


*** Keywords ***
Abrir site
    Go To    ${site}
    Maximize Browser Window

Rolar e clicar na marca
    Scroll Element Into View    locator=//a[@id='navhref[29]']
    Click Element               locator=//td[@id='navicon[48]']//a

Selecionar ano e modelo
    Wait Until Element Is Visible    locator=//a[@id='navhref[452]']
    Click Element    locator=//a[@id='navhref[452]']
    Wait Until Element Is Visible    locator=//a[@id='navhref[565]'] 
    Click Element    locator=//a[@id='navhref[565]']  
    Wait Until Element Is Visible    locator=//a[@id='navhref[594]'] 
    Click Element    locator=//a[@id='navhref[594]']
        
Selecionar pecas
    #Peca 1
    Wait Until Element Is Visible    locator=//a[@id='navhref[605]']
    Click Element    locator=//a[@id='navhref[605]']
    Wait Until Element Is Visible    locator=//a[@id='navhref[629]']
    Click Element    locator=//a[@id='navhref[629]']
    Wait Until Element Is Visible    locator=//span[normalize-space()='Add to Cart']
    Click Element    locator=//span[normalize-space()='Add to Cart']
    Sleep    1s
    Click Element    locator=//form[@id='frmlistings[677]']//div//div//img[@title='Close']
    
    #Peca 2
    Reload Page
    Wait Until Element Is Visible    locator=//a[@id='navhref[1036]'] 
    Click Element    locator=//a[@id='navhref[1036]']    
    Wait Until Element Is Visible    locator=//span[normalize-space()='Add to Cart']
    Click Element    locator=//span[normalize-space()='Add to Cart']
    Sleep    1s
    Click Element    locator=//img[@title='Close']
    
Preencher form
    Scroll Element Into View    locator=//td[@class='vtop tacenter']//span[contains(text(),'Learn More')]
    Input Text    locator=//input[@id='ship_sidecart[name]']    text=Kaiky Trevisan Fernandes
    Input Text    locator=//input[@id='ship_sidecart[address1]']    text=Rua Jose Bongiovani, 700
    Input Text    locator=//input[@id='ship_sidecart[address2]']    text=Cidade Universitária Presidente Prudente
    Input Text    locator=//input[@id='ship_sidecart[city]']    text=Presidente Prudente
    Input Text    locator=//input[@id='ship_sidecart[postcode]']    text=19050-680
    Click Element    locator=//input[@id='btncalcshipping_sidecart']
    
    Sleep    1s
    Click Element    locator=//span[@id='tablabel[cart]']
    Scroll Element Into View    locator=//input[@id='ship_maincart[name]']
    Input Text    locator=//input[@id='ship_maincart[state]']    text=SP
    Input Text    locator=//input[@id='ship_maincart[tel]']     text=+5518999999999
    Input Text    locator=//input[@id='ship_maincart[email]']    text=teste.teste@gmail.com
    Sleep    2s

Pagamento
    Click Element    locator=//input[@id='btncalcshipping_maincart'] 
    Sleep    1s
    Scroll Element Into View    locator=//input[@id='ship_maincart[email]']
    Click Element    locator=//a[@id='jsPlaceOrder_maincart']//span[@class='la-btn-v'][normalize-space()='Place Order']
    Sleep    1s 
    Select From List By Label    //select[@id='paymethod_maincart']    Wire Transfer
    Click Element    locator=//a[@id='jsPlaceOrder_maincart']//span[@class='la-btn-v'][normalize-space()='Place Order']

      
