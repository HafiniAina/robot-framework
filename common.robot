*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keyword ***
Login
    [arguments]     ${email}    ${pw}
     Open Browser    url=https://app.deriv.com   browser=chrome
	 set window size    1280    1028
     wait until page does not contain element    dt_core_header_acc-info-preloader   60
	 wait until page contains element   ${login_btn}     60
	 Click Element     ${login_btn}
     wait until page contains element   ${email_field}     30
	 input text     ${email_field}      ${email}
	 input text     ${pw_field}      ${pw}
	 Click Element   ${login_oauth_btn}

API Token
     wait until page does not contain element    ${pageloader}  60
     wait until page contains element   ${accSetting}    60
     Click Element   ${accSetting}
     wait until page contains element       ${settingMenu}          30
     Click Element      ${clickAPI}
     wait until page contains element       ${clickTick}
     Click Element      ${clickTick}
     Click Element         ${tokenName}
     input text      ${tokenName}  YangPertama
     Click Element        ${clickCreate}
     wait until page contains element       ${clickDelete}
     Click Element      ${clickDelete}
     wait until page contains element       ${yesbtn}
     Click Element      ${yesbtn}


Deactivate
     Click Element      ${deactivate}
     Click Element      ${contDeactivate}
     Click Element      ${reason1}
     Click Element      ${reason2}
     Click Element      ${reason3}
     Click Element      ${clickContinue}