.class public Lcom/distriqt/extension/inappbilling/InAppBillingController;
.super Ljava/lang/Object;
.source "InAppBillingController.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

.field private _productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public billingHelper:Lcom/android/vending/billing/util/IabHelper;

.field public purchaseActivity:Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

.field public purchaseListener:Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

.field public queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

.field public setupComplete:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;Landroid/app/Activity;)V
    .locals 2
    .param p1, "dispatcher"    # Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    .line 50
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 52
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseActivity:Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    .line 53
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    .line 54
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseListener:Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    .line 62
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    .line 67
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/inappbilling/InAppBillingController;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/inappbilling/InAppBillingController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    return-object v0
.end method

.method private getProducts(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    sget-object v2, Lcom/distriqt/extension/inappbilling/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v3, "getProducts( %s )"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;-><init>()V

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    .line 207
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    invoke-virtual {v1, v2}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->setDispatcher(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v1, p1}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->setProductIds(Ljava/util/List;)V

    .line 210
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->query:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 215
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public activeProductIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public activeProducts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/billing/util/SkuDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->getSkuMap()Ljava/util/Map;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public canMakePayments()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    .line 132
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->dispose()V

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 135
    return-void
.end method

.method public consumePurchase(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 313
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 319
    .local v1, "productIds":[Ljava/lang/String;
    new-instance v0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;-><init>()V

    .line 320
    .local v0, "listener":Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->productId:Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    iput-object v2, v0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 322
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    invoke-virtual {v0, v2}, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->setDispatcher(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;)V

    .line 324
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 326
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 324
    invoke-virtual {v2, v4, v3, v0}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 329
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 331
    .end local v0    # "listener":Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;
    .end local v1    # "productIds":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public finishActivePurchaseActivity()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseActivity:Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseActivity:Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->finish()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseActivity:Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    .line 346
    :cond_0
    return-void
.end method

.method public finishPurchase()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public getProducts(Ljava/util/List;Ljava/lang/Boolean;)Z
    .locals 3
    .param p2, "clearProducts"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 152
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "productId":Ljava/lang/String;
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v0    # "productId":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_productIds:Ljava/util/ArrayList;

    const-string v2, "query.get.products"

    invoke-direct {p0, v1, v2}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->getProducts(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isProductViewSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 226
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "market://details?id="

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSupported()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Lcom/distriqt/extension/inappbilling/PurchaseRequest;)Z
    .locals 9
    .param p1, "request"    # Lcom/distriqt/extension/inappbilling/PurchaseRequest;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    sget-object v5, Lcom/distriqt/extension/inappbilling/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v6, "makePurchase( %s )"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v5}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->getProductIds()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 294
    :goto_0
    return v3

    .line 270
    :cond_1
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseListener:Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    if-nez v4, :cond_2

    .line 272
    new-instance v4, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    invoke-direct {v4}, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;-><init>()V

    iput-object v4, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseListener:Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    .line 273
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseListener:Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    invoke-virtual {v4, v5}, Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;->setDispatcher(Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;)V

    .line 277
    :cond_2
    const-string v1, "inapp"

    .line 278
    .local v1, "productType":Ljava/lang/String;
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    iget-object v5, p1, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v0

    .line 279
    .local v0, "details":Lcom/android/vending/billing/util/SkuDetails;
    if-eqz v0, :cond_3

    .line 280
    invoke-virtual {v0}, Lcom/android/vending/billing/util/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v2, "purchaseActivityIntent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    const-string v4, "quantity"

    iget v5, p1, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->quantity:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v4, "payload"

    iget-object v5, p1, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->developerPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v4, "productId"

    iget-object v5, p1, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v4, "productType"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "details":Lcom/android/vending/billing/util/SkuDetails;
    .end local v1    # "productType":Ljava/lang/String;
    .end local v2    # "purchaseActivityIntent":Landroid/content/Intent;
    :cond_4
    move v3, v4

    .line 294
    goto :goto_0
.end method

.method public restorePurchases()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->getProductIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->queryInventoryListener:Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/listeners/QueryInventoryListener;->getProductIds()Ljava/util/List;

    move-result-object v0

    const-string v1, "query.get.purchases"

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->getProducts(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setup(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "billingPublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    const-string v2, "Invalid Key"

    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/vending/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 100
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0, v2}, Lcom/android/vending/billing/util/IabHelper;->enableDebugLogging(Z)V

    .line 102
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    new-instance v1, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;-><init>(Lcom/distriqt/extension/inappbilling/InAppBillingController;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->startSetup(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 122
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public showProductView(Ljava/lang/String;)Z
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->isProductViewSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "productViewIntent":Landroid/content/Intent;
    const-string v1, "productId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 240
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->_dispatcher:Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    const-string v2, "productview:loaded"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x1

    .line 243
    .end local v0    # "productViewIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
