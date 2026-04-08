.class public Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;
.super Ljava/lang/Object;
.source "InAppBillingEvent.java"


# static fields
.field public static CONSUME_FAILED:Ljava/lang/String;

.field public static CONSUME_SUCCESS:Ljava/lang/String;

.field public static PRODUCTS_FAILED:Ljava/lang/String;

.field public static PRODUCTS_LOADED:Ljava/lang/String;

.field public static PRODUCT_INVALID:Ljava/lang/String;

.field public static RESTORE_PURCHASES_COMPLETE:Ljava/lang/String;

.field public static RESTORE_PURCHASES_FAILED:Ljava/lang/String;

.field public static SETUP_FAILURE:Ljava/lang/String;

.field public static SETUP_SUCCESS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "setup:success"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    .line 31
    const-string v0, "setup:failure"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    .line 33
    const-string v0, "products:loaded"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    .line 34
    const-string v0, "products:failed"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 35
    const-string v0, "product:invalid"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    .line 37
    const-string v0, "consume:success"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    .line 38
    const-string v0, "consume:failed"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 40
    const-string v0, "restore:purchases:complete"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_COMPLETE:Ljava/lang/String;

    .line 41
    const-string v0, "restore:purchases:failed"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_FAILED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "errorCode"    # I
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v2, "errorCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/billing/util/SkuDetails;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v2, "jsonObj":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 50
    .local v6, "productsObj":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 52
    .local v3, "product":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    .local v4, "productId":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/util/SkuDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .local v0, "details":Lcom/android/vending/billing/util/SkuDetails;
    :try_start_1
    invoke-static {v4, v0}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->encodeProduct(Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;)Lorg/json/JSONObject;

    move-result-object v5

    .line 58
    .local v5, "productObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    .end local v5    # "productObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 72
    .end local v0    # "details":Lcom/android/vending/billing/util/SkuDetails;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "product":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;>;"
    .end local v4    # "productId":Ljava/lang/String;
    .end local v6    # "productsObj":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 74
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v7, ""

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v7

    .line 68
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v6    # "productsObj":Lorg/json/JSONArray;
    :cond_1
    :try_start_3
    const-string v7, "products"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    goto :goto_1
.end method
