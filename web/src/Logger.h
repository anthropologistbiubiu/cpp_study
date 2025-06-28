#pragma once
#include <trantor/utils/Logger.h>

struct Logger {
    static void init(trantor::Logger::LogLevel level) {
        trantor::Logger::setLogLevel(level);
        // Drogon 自带的日志系统会根据 setLogPath 自动归档滚动日志
        LOG_INFO << "Logger initialized";
    }
};