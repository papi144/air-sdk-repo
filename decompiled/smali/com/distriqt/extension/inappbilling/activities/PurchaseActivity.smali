.class public Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"


# static fields
.field public static PURCHASE_REQUEST_CODE:I

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x34

    sput v0, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->PURCHASE_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 72
    sget-object v1, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult(%d,%d,...)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    :try_start_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 77
    .local v0, "mContext":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v1

    iget-object v1, v1, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/vending/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "mContext":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    :goto_0
    sget-object v1, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->finishActivePurchaseActivity()V

    .line 86
    :cond_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object v0, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->setTheme(I)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "productId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "productType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "payload":Ljava/lang/String;
    sget-object v8, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 50
    .local v8, "mContext":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    invoke-virtual {v8}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseActivity:Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;

    .line 52
    sget-object v0, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "launchPurchaseFlow( ..., %s, %s, %d, ..., %s )"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v5, 0x2

    sget v9, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->PURCHASE_REQUEST_CODE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x3

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v8}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v0

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 59
    invoke-virtual {v8}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v0

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->billingHelper:Lcom/android/vending/billing/util/IabHelper;

    sget v4, Lcom/distriqt/extension/inappbilling/activities/PurchaseActivity;->PURCHASE_REQUEST_CODE:I

    invoke-virtual {v8}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/InAppBillingController;

    move-result-object v1

    iget-object v5, v1, Lcom/distriqt/extension/inappbilling/InAppBillingController;->purchaseListener:Lcom/distriqt/extension/inappbilling/listeners/PurchaseListener;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vending/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2    # "productId":Ljava/lang/String;
    .end local v3    # "productType":Ljava/lang/String;
    .end local v6    # "payload":Ljava/lang/String;
    .end local v8    # "mContext":Lcom/distriqt/extension/inappbilling/InAppBillingContext;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v7

    .line 64
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
