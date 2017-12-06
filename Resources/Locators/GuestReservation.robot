*** Variables ***

${FirstName}    name        firstname
${LastName}     name        lastname
${email}     name        email
${ConfirmEmail}     name        confirmemail
${Address}      name        address
${Phone}        name        phone
${CountryDD}    id      s2id_autogen1
${Country}      xpath       //*[@id="select2-drop"]/div/input
${CountryResult}    xpath   /html/body/div[10]/ul
${ConfirmBooking}   name    guest
${Search}     xpath       //*[@id="HOTELS"]/form/div[2]/div[4]/button
${BookNow}      xpath       //*[@id="ROOMS"]/div/table/tbody/tr[1]/td/div[2]/div/div[5]/div[3]/button
${CustomerDetailsName}  xpath   //*[@id="body-section"]/div[1]/div/div[7]/div[2]/p
${Details}      xpath       //*[@id="body-section"]/div[7]/div[2]/div/table/tbody/tr[1]/td/div[2]/div/div[5]/a/button