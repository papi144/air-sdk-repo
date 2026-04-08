.class public Lcom/distriqt/extension/inappbilling/functions/CanMakePaymentsFunction;
.super Ljava/lang/Object;
.source "CanMakePaymentsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 35
    .local v2, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    check-cast p1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->canMakePayments()Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    .local v0, "canMakePayments":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    .end local v0    # "canMakePayments":Ljava/lang/Boolean;
    :goto_0
    return-object v2

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
