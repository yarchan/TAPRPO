from seleniumwire import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.firefox_binary import FirefoxBinary
import time
import logging


URL = "http://app:5000"


class TestSelenium:
    def setup_method(self):
        binary = FirefoxBinary("/firefox/firefox")
        self.driver = webdriver.Firefox(firefox_binary=binary)

    def test_custom_button(self):
        self.driver.get(f"{URL}/")
        time.sleep(1)
        self.driver.execute_script("document.getElementById('timeout_buttons').innerHTML = '<button id=\"custom_btn\">custom button</button>'")
        time.sleep(1)
        assert self.driver.find_element(By.ID, "custom_btn").get_attribute('innerHTML') == 'custom button'
        
    def teardown_method(self):
        self.driver.close()