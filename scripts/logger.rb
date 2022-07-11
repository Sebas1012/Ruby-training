# La libreria logger ya se encuentra incluida en el core de ruby.
require 'logger'

logger = Logger.new(STDOUT)
logger_2 = Logger.new('log.txt')

logger.debug("I'm a debug log")
logger.info("I'm an info log")
logger.warn("I'm a warn log")
logger.error("I'm an error log: error message")
logger.fatal("I'm a fatal log")

logger_2.debug("I'm a debug log")
logger_2.info("I'm an info log")
logger_2.warn("I'm a warn log")
logger_2.error("I'm an error log: error message")
logger_2.fatal("I'm a fatal log")


