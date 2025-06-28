// src/controllers/OrderController.h
#pragma once
#include <drogon/HttpController.h>
using namespace drogon;

class OrderController : public HttpController<OrderController> {
public:
    METHOD_LIST_BEGIN
    ADD_METHOD_TO(OrderController::getOrder, "/api/v1/orders/{1}", Get); // 路径一定要写 {1}
    METHOD_LIST_END

    void getOrder(const HttpRequestPtr &req,
                  std::function<void(const HttpResponsePtr &)> &&cb,
                  int64_t orderId)
    {
        Json::Value obj;
        obj["orderId"] = orderId;
        obj["status"] = "processing";
        cb(HttpResponse::newHttpJsonResponse(obj));
    }
};