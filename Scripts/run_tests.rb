if ENV['SL_RUN_UNIT_TESTS'] then
    launcher_path = "/usr/local/bin/ios-sim"    
    #File.join(ENV['SRCROOT'], "Scripts", "ios-sim")
    test_bundle_path= File.join(ENV['BUILT_PRODUCTS_DIR'], "#{ENV['PRODUCT_NAME']}.#{ENV['WRAPPER_EXTENSION']}")

    environment = {
        'DYLD_INSERT_LIBRARIES' => "/../../Library/PrivateFrameworks/IDEBundleInjection.framework/IDEBundleInjection",
        'XCInjectBundle' => test_bundle_path,
        'XCInjectBundleInto' => ENV["TEST_HOST"]
    }

    environment_args = environment.collect { |key, value| "--setenv #{key}=\"#{value}\""}.join(" ")

    app_test_host = File.dirname(ENV["TEST_HOST"])
    system("#{launcher_path} launch \"#{app_test_host}\" #{environment_args} --args -SenTest All #{test_bundle_path}")
else
    puts "SL_RUN_UNIT_TESTS not set - Did not run unit tests!"
end