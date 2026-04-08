.class public Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;
.super Ljava/lang/Object;
.source "PurchaseListener.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-void
.end method


# virtual methods
.method public getDispatcher()Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

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
    .line 46
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_productIds:Ljava/util/List;

    return-object v0
.end method

.method public onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V
    .locals 6
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "purchase"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    const/4 v5, 0x0

    .line 57
    sget-object v0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->TAG:Ljava/lang/String;

    const-string v1, "onIabPurchaseFinished( [%d]:%s )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 106
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    const-string v1, "purchase:failed"

    .line 108
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->finishActivePurchaseActivity()V

    goto :goto_0

    .line 66
    :sswitch_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    const-string v1, "purchase:success"

    .line 68
    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lcom/android/vending/billing/util/Purchase;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :sswitch_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    const-string v1, "purchase:cancelled"

    .line 78
    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lcom/android/vending/billing/util/Purchase;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :sswitch_2
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    const-string v1, "purchase:failed"

    .line 97
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ed -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDispatcher(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

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
    .line 47
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->_productIds:Ljava/util/List;

    return-void
.end method
