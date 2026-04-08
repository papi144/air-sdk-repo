.class public Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;
.super Ljava/lang/Object;
.source "PurchaseEvent.java"


# static fields
.field public static final PURCHASES_QUEUE_REMOVED:Ljava/lang/String; = "purchases:queue:removed"

.field public static final PURCHASES_QUEUE_UPDATED:Ljava/lang/String; = "purchases:queue:updated"

.field public static final PURCHASES_REMOVED:Ljava/lang/String; = "purchases:removed"

.field public static final PURCHASES_UPDATED:Ljava/lang/String; = "purchases:updated"

.field public static final PURCHASE_CANCELLED:Ljava/lang/String; = "purchase:cancelled"

.field public static final PURCHASE_FAILED:Ljava/lang/String; = "purchase:failed"

.field public static final PURCHASE_PURCHASING:Ljava/lang/String; = "purchase:purchasing"

.field public static final PURCHASE_REFUNDED:Ljava/lang/String; = "purchase:refunded"

.field public static final PURCHASE_RESTORED:Ljava/lang/String; = "purchase:restored"

.field public static final PURCHASE_SUCCESS:Ljava/lang/String; = "purchase:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "errorCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v1

    .line 96
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatPurchaseForEvent(Lcom/android/vending/billing/util/Purchase;)Ljava/lang/String;
    .locals 2
    .param p0, "purchase"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    .line 49
    if-nez p0, :cond_0

    :try_start_0
    const-string v1, ""

    :goto_0
    invoke-static {v1, p0}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->encodePurchase(Ljava/lang/String;Lcom/android/vending/billing/util/Purchase;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    .local v0, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 55
    const-string v1, "{}"

    goto :goto_1
.end method

.method public static formatRestoredPurchasesForEvent(Ljava/util/List;Lcom/android/vending/billing/util/Inventory;)Ljava/lang/String;
    .locals 7
    .param p1, "inventory"    # Lcom/android/vending/billing/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/billing/util/Inventory;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v0, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v3, "purchasesObj":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "productId":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/vending/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/util/Purchase;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->encodePurchase(Ljava/lang/String;Lcom/android/vending/billing/util/Purchase;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    .local v2, "purchase":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .end local v1    # "productId":Ljava/lang/String;
    .end local v2    # "purchase":Lorg/json/JSONObject;
    .end local v3    # "purchasesObj":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 80
    const-string v4, "{}"

    :goto_1
    return-object v4

    .line 73
    .restart local v0    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "purchasesObj":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string v4, "purchases"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method
