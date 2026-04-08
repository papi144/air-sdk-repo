.class public Lcom/distriqt/extension/inappbilling/InAppBillingContext;
.super Lcom/adobe/fre/FREContext;
.source "InAppBillingContext.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# instance fields
.field private _controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->TAG:Ljava/lang/String;

    .line 53
    const-string v0, "4.7"

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->VERSION:Ljava/lang/String;

    .line 54
    const-string v0, "Android"

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->IMPLEMENTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    return-void
.end method


# virtual methods
.method public controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v1, "creating controller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;

    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/distriqt/extension/inappbilling/InAppBillingController;-><init>(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    return-object v0
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->cleanup()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->_controller:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    .line 69
    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "version"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "implementation"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "vV2"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "canMakePayments"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/CanMakePaymentsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/CanMakePaymentsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "setup"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "cleanup"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/CleanupFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/CleanupFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "getProducts"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "activeProducts"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "activeProductIds"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "isProductViewSupported"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/IsProductViewSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/IsProductViewSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "showProductView"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/ShowProductViewFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/ShowProductViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "applicationReceipt_isSupported"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "applicationReceipt_getAppReceipt"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/GetAppReceiptFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/GetAppReceiptFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "applicationReceipt_refresh"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/RefreshFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/applicationreceipt/RefreshFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "makePurchase"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/MakePurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/MakePurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "finishPurchase"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/FinishPurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/FinishPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "restorePurchases"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/RestorePurchasesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/RestorePurchasesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "consumePurchase"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/ConsumePurchaseFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/ConsumePurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "getPendingPurchases"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/GetPendingPurchasesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/GetPendingPurchasesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "startDownloads"

    new-instance v2, Lcom/distriqt/extension/inappbilling/functions/purchases/StartDownloadsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/functions/purchases/StartDownloadsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method
