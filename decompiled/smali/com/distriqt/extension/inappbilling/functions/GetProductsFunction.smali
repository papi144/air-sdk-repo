.class public Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;
.super Ljava/lang/Object;
.source "GetProductsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x0

    .line 35
    sget-object v7, Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;->TAG:Ljava/lang/String;

    const-string v8, "call"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/4 v5, 0x0

    .line 39
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    move-object v2, v0

    .line 40
    .local v2, "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    const/4 v6, 0x0

    .line 41
    .local v6, "success":Z
    iget-boolean v7, v2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v7, :cond_0

    .line 43
    const/4 v7, 0x0

    aget-object v7, p2, v7

    check-cast v7, Lcom/adobe/fre/FREArray;

    invoke-static {v7}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "productIds":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 46
    .local v1, "clearProducts":Ljava/lang/Boolean;
    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->getProducts(Ljava/util/List;Ljava/lang/Boolean;)Z

    move-result v6

    .line 48
    .end local v1    # "clearProducts":Ljava/lang/Boolean;
    .end local v4    # "productIds":[Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 54
    .end local v2    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    .end local v6    # "success":Z
    :goto_0
    return-object v5

    .line 50
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
