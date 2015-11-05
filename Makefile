run_all_in_parallel:
	make -j test_Windows8.1_firefox_40 test_Windows7_chrome_45 test_OSX_10.10_safari_8
	
test_Windows8.1_firefox_40:
	browserName=firefox version=40.0 platform="Windows 8.1" nosetests --nocapture --with-xunit --xunit-file=./Windows8.1_firefox_40.xml

test_Windows7_chrome_45:
	browserName=chrome version=45.0 platform="Windows 7" nosetests --nocapture --with-xunit --xunit-file=./Windows7_chrome_45.xml

test_OSX_10.10_safari_8:
	browserName=safari version=8.0 platform="OS X 10.10" nosetests --nocapture --with-xunit --xunit-file=./OSX_10.10_safari_8.xml