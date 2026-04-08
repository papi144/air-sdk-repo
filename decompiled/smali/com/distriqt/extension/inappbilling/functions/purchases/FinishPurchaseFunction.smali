.class public Lcom/distriqt/extension/inappbilling/functions/purchases/FinishPurchaseFunction;
.super Ljava/lang/Object;
.source "FinishPurchaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 32
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    move-object v1, v0

    .line 33
    .local v1, "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 34
    .local v4, "success":Ljava/lang/Boolean;
    iget-boolean v5, v1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->finishPurchase()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 38
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    .end local v1    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    .end local v4    # "success":Ljava/lang/Boolean;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
