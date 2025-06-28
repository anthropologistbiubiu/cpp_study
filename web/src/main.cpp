#include <drogon/drogon.h>
#include "Logger.h"

int main() {
    // 只需初始化日志级别
    Logger::init(trantor::Logger::kInfo);

    drogon::app()
        .setLogPath("./logs")
        .setLogLevel(trantor::Logger::kInfo)
        .addListener("0.0.0.0", 18888)
        .setThreadNum(4)
        .run();

    return 0;
}