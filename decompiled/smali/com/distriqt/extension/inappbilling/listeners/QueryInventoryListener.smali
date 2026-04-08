.class public Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;
.super Ljava/lang/Object;
.source "QueryInventoryListener.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# static fields
.field public static final QUERY_GET_PRODUCTS:Ljava/lang/String; = "query.get.products"

.field public static final QUERY_RESTORE_PURCHASES:Ljava/lang/String; = "query.get.purchases"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private _dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

.field private _productIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _skuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/billing/util/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field public query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    .line 46
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_productIds:Ljava/util/List;

    .line 61
    const-string v0, "query.get.products"

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDispatcher()Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-object v0
.end method

.method public getProductIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_productIds:Ljava/util/List;

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/util/SkuDetails;

    goto :goto_0
.end method

.method public getSkuMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/billing/util/SkuDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    return-object v0
.end method

.method public onQueryInventoryFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 5
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "inventory"    # Lcom/android/vending/billing/util/Inventory;

    .prologue
    .line 83
    sget-object v1, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->TAG:Ljava/lang/String;

    const-string v2, "onQueryInventoryFinished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "query.get.products"

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    .line 94
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_productIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "productId":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/android/vending/billing/util/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    .end local v0    # "productId":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_skuMap:Ljava/util/Map;

    .line 119
    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-interface {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-interface {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_5
    const-string v1, "query.get.purchases"

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    const-string v2, "purchases:updated"

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_productIds:Ljava/util/List;

    .line 139
    invoke-static {v3, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatRestoredPurchasesForEvent(Ljava/util/List;Lcom/android/vending/billing/util/Inventory;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-interface {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_COMPLETE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_FAILED:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-interface {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDispatcher(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-void
.end method

.method public setProductIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->_productIds:Ljava/util/List;

    return-void
.end method
