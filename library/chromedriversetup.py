from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

#python keyword to get chromedriver path
def get_chromedriver_path():
    driver_path = ChromeDriverManager().install()
    return  driver_path