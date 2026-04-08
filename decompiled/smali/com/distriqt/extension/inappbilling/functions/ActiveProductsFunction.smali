.class public Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;
.super Ljava/lang/Object;
.source "ActiveProductsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 36
    sget-object v6, Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;->TAG:Ljava/lang/String;

    const-string v7, "call"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v5, 0x0

    .line 40
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    move-object v1, v0

    .line 41
    .local v1, "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    const-string v4, ""

    .line 42
    .local v4, "productsString":Ljava/lang/String;
    iget-boolean v6, v1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->activeProducts()Ljava/util/Map;

    move-result-object v3

    .line 45
    .local v3, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;>;"
    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .end local v3    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;>;"
    :cond_0
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 53
    .end local v1    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    .end local v4    # "productsString":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
