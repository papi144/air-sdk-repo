.class public Lcom/distriqt/extension/inappbilling/functions/SetupFunction;
.super Ljava/lang/Object;
.source "SetupFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v8, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, "result":Lcom/adobe/fre/FREObject;
    sget-object v6, Lcom/distriqt/extension/inappbilling/functions/SetupFunction;->TAG:Ljava/lang/String;

    const-string v7, "call"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    move-object v1, v0

    .line 36
    .local v1, "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    const/4 v5, 0x0

    .line 37
    .local v5, "success":Z
    iget-boolean v6, v1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v6, :cond_0

    .line 39
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setup(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 42
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    .end local v1    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    .end local v5    # "success":Z
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
