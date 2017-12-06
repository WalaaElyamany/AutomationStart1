from Framework.Py.Selenium.BasePage import BasePage
from Framework.Py.Selenium.TestExceptionHandler import driverhandler

class GuestReservation(BasePage):
    def __init__(self,loc_file):
        self.locator_file = loc_file

    @driverhandler
    def Open_Web_Browser(self, browser, url):
        BasePage.__init__(self, browser, url, self.locator_file)

    @driverhandler
    def Click_Search(self):
        self.click_element("Search")

    @driverhandler
    def Enter_First_Name(self, first_name):
        self.get_element("FirstName").send_keys(first_name)

    @driverhandler
    def Enter_Last_Name(self, last_name):
        self.get_element("LastName").send_keys(last_name)

    @driverhandler
    def Enter_Email(self, email):
        self.get_element("email").send_keys(email)

    @driverhandler
    def Enter_Confirm_Email(self, confirmemail):
        self.get_element("ConfirmEmail").send_keys(confirmemail)

    @driverhandler
    def Enter_Phone(self, phone):
        self.get_element("Phone").send_keys(phone)

    @driverhandler
    def Enter_Address(self, address):
        self.get_element("Address").send_keys(address)

    @driverhandler
    def Enter_Country(self, Country):
        self.click_element("CountryDD")
        self.get_element("Country").send_keys(Country)
        self.click_element("CountryResult")

    @driverhandler
    def Click_Confirm_Booking(self):
        self.driver.execute_script("window.scrollTo(0, 300);")
        self.click_element("ConfirmBooking")

    @driverhandler
    def Click_Book_Now(self):
        self.driver.execute_script("window.scrollTo(0, 500);")
        self.click_element("BookNow")

    def Get_Customer_Name(self):
        return self.get_element("CustomerDetailsName").text

    @driverhandler
    def Click_Details(self):
        self.click_element("Details")