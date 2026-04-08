.class public Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;
.super Ljava/lang/Object;
.source "ConsumePurchaseListener.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private _dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

.field public billingHelper:Lcom/android/vending/billing/util/IabHelper;

.field public productId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 36
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-object v0
.end method


# virtual methods
.method public getDispatcher()Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-object v0
.end method

.method public onQueryInventoryFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 6
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "inventory"    # Lcom/android/vending/billing/util/Inventory;

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v2, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->TAG:Ljava/lang/String;

    const-string v4, "onQueryInventoryFinished()"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->productId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/vending/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/util/Purchase;

    move-result-object v1

    .line 50
    .local v1, "purchase":Lcom/android/vending/billing/util/Purchase;
    sget-object v4, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryInventoryFinished(): success:: found valid purchase = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    if-eqz v1, :cond_2

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    new-instance v3, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;-><init>(Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/vending/billing/util/IabHelper;->consumeAsync(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-interface {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    move v2, v3

    .line 50
    goto :goto_1

    .line 92
    :cond_2
    sget-object v2, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->TAG:Ljava/lang/String;

    const-string v4, "onQueryInventoryFinished(): Purchase could not be located, consume has failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-interface {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1    # "purchase":Lcom/android/vending/billing/util/Purchase;
    :cond_3
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-interface {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDispatcher(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-void
.end method
