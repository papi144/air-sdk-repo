.class public Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;
.super Ljava/lang/Object;
.source "ActiveProductIdsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/distriqt/extension/inappbilling/functions/CleanupFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;->TAG:Ljava/lang/String;

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
    .locals 12
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v11, 0x0

    .line 35
    sget-object v9, Lcom/distriqt/extension/inappbilling/functions/ActiveProductIdsFunction;->TAG:Ljava/lang/String;

    const-string v10, "call"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/4 v8, 0x0

    .line 39
    .local v8, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    move-object v2, v0

    .line 40
    .local v2, "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    iget-boolean v9, v2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v9, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->activeProductIds()Ljava/util/ArrayList;

    move-result-object v7

    .line 43
    .local v7, "productIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Lcom/adobe/fre/FREArray;->newArray(I)Lcom/adobe/fre/FREArray;

    move-result-object v5

    .line 44
    .local v5, "freProductIds":Lcom/adobe/fre/FREArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 46
    int-to-long v10, v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v5, v10, v11, v9}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48
    :cond_0
    move-object v8, v5

    .line 60
    .end local v2    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    .end local v5    # "freProductIds":Lcom/adobe/fre/FREArray;
    .end local v6    # "i":I
    .end local v7    # "productIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v8

    .line 52
    .restart local v2    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/adobe/fre/FREArray;->newArray(I)Lcom/adobe/fre/FREArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    .local v4, "freEmptyProductIds":Lcom/adobe/fre/FREArray;
    move-object v8, v4

    goto :goto_1

    .line 56
    .end local v2    # "ctx":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    .end local v4    # "freEmptyProductIds":Lcom/adobe/fre/FREArray;
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_1
.end method
