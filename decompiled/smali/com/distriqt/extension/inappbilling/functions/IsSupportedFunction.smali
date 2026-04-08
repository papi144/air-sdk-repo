.class public Lcom/distriqt/extension/inappbilling/functions/IsSupportedFunction;
.super Ljava/lang/Object;
.source "IsSupportedFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 37
    .local v2, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    const-string v3, "DEBUG"

    const-string v4, "LIST RESOURCES: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/util/Resources;->listResources(Ljava/lang/String;)V

    .line 40
    const-string v3, "DEBUG"

    const-string v4, "LIST RESOURCES: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "android.support.v7.appcompat"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v3, "android.support.v7.appcompat"

    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/util/Resources;->listResources(Ljava/lang/String;)V

    .line 43
    check-cast p1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->isSupported()Ljava/lang/Boolean;

    move-result-object v1

    .line 44
    .local v1, "isSupported":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    .end local v1    # "isSupported":Ljava/lang/Boolean;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
