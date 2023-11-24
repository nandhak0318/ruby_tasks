module LoggingMixin
    def log_info(message)
      puts "[INFO] #{message}"
    end
  
    def log_warning(message)
      puts "[WARNING] #{message}"
    end
  
    def log_error(message)
      puts "[ERROR] #{message}"
    end
end

class MyClass
    include LoggingMixin

    def perform_task
        log_info("Starting task...")
        log_info("Task completed successfully.")
    end
end

my_instance = MyClass.new
my_instance.perform_task
my_instance.log_warning("This is a warning.")
  