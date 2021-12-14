*** Settings ***
# Documentation    Suite description
Library    SeleniumLibrary
Resource   common.robot


*** Variable ***
${login_btn}  dt_login_button
${email_field}  //*[@id='txtEmail']
${pw_field}  //*[@type="password"]
${login_oauth_btn}  //*[@type='submit']

${accSetting}           //*[@id="dt_core_header_acc-info-container"]/div[2]/div
${pageloader}         //*[@class="chart-container__loader"]
${clickAPI}            //*[@id="dc_api-token_link"]
${settingMenu}          //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[1]/div
${clickTick}            //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[1]
${tokenName}            //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/div/input
${clickCreate}          //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/button
${clickDelete}          //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr[1]/td[5]/button
${yesbtn}               //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr[1]/td[5]/div/button[2]
${deactivate}           //*[@id="dc_deactivate-account_link"]
${contDeactivate}       //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/button
${reason1}               //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[2]/span[1]
${reason2}              //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[3]/span[2]
${reason3}              //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[1]/span[2]
${clickContinue}        //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]



*** Keyword ***


*** Test Cases ***
Open Deriv

        Login   ${my_email}   ${my_pw}
