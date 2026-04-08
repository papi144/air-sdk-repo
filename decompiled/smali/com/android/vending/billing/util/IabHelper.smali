.class public Lcom/android/vending/billing/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugLog:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->mDisposed:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->mSubscriptionsSupported:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 166
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 751
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 754
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 764
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 767
    rsub-int v2, p0, -0x3e8

    .line 768
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 774
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 769
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 771
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 772
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 774
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method

.method private isTestSku(Ljava/lang/String;)Z
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 837
    if-eqz p1, :cond_0

    .line 839
    :try_start_0
    const-string v1, "android.test"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 848
    :cond_0
    :goto_0
    return v0

    .line 845
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    return-void
.end method

.method consume(Lcom/android/vending/billing/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/vending/billing/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/billing/util/IabException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 658
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 660
    iget-object v4, p1, Lcom/android/vending/billing/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 661
    new-instance v4, Lcom/android/vending/billing/util/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/vending/billing/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 666
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 670
    new-instance v4, Lcom/android/vending/billing/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/android/vending/billing/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 674
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 675
    iget-object v4, p0, Lcom/android/vending/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 676
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 687
    return-void

    .line 680
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 681
    new-instance v4, Lcom/android/vending/billing/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/android/vending/billing/util/Purchase;
    .param p2, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 726
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/billing/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/vending/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 730
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/billing/util/Purchase;",
            ">;",
            "Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/billing/util/Purchase;>;"
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 739
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vending/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 741
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/billing/util/Purchase;",
            ">;",
            "Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/billing/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 987
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 988
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/billing/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper$3;-><init>(Lcom/android/vending/billing/util/IabHelper;Ljava/util/List;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1017
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1018
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mSetupDone:Z

    .line 290
    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDisposed:Z

    .line 295
    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    .line 296
    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 297
    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 298
    iput-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 299
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 180
    iput-boolean p1, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugLog:Z

    .line 181
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 174
    iput-boolean p1, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugLog:Z

    .line 175
    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public flagEndAsync()V
    .locals 2

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 828
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 830
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 788
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 789
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 790
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 791
    const/4 v1, 0x0

    .line 794
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 793
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 794
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 796
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 798
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 804
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 805
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 806
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 807
    const/4 v1, 0x0

    .line 810
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 809
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 810
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 812
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 814
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 439
    iget v8, p0, Lcom/android/vending/billing/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 518
    :goto_0
    return v8

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 442
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 447
    if-nez p3, :cond_2

    .line 448
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 449
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 450
    .local v6, "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    .line 451
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 454
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/vending/billing/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 455
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 459
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 460
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 465
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 466
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 468
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 469
    .restart local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    .line 470
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 473
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 475
    .local v2, "purchase":Lcom/android/vending/billing/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/android/vending/billing/util/Purchase;

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/android/vending/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v2    # "purchase":Lcom/android/vending/billing/util/Purchase;
    .local v3, "purchase":Lcom/android/vending/billing/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "sku":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/vending/billing/util/IabHelper;->isTestSku(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/android/vending/billing/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 481
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 482
    .restart local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    .line 483
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 485
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 496
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/android/vending/billing/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    .line 518
    .end local v3    # "purchase":Lcom/android/vending/billing/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 487
    .restart local v2    # "purchase":Lcom/android/vending/billing/util/Purchase;
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 490
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 491
    .restart local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    .line 492
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 499
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/android/vending/billing/util/Purchase;
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 501
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 502
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 503
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 504
    .restart local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto :goto_1

    .line 507
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 509
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 510
    .restart local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto :goto_1

    .line 513
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 514
    invoke-static {v5}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 513
    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 515
    new-instance v6, Lcom/android/vending/billing/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 516
    .restart local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto/16 :goto_1

    .line 487
    .end local v6    # "result":Lcom/android/vending/billing/util/IabResult;
    .restart local v3    # "purchase":Lcom/android/vending/billing/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/android/vending/billing/util/Purchase;
    .restart local v2    # "purchase":Lcom/android/vending/billing/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 333
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vending/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 372
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 373
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 376
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/vending/billing/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 377
    new-instance v11, Lcom/android/vending/billing/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 379
    .local v11, "r":Lcom/android/vending/billing/util/IabResult;
    invoke-virtual {p0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 380
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    .line 422
    .end local v11    # "r":Lcom/android/vending/billing/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 387
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/android/vending/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 388
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 391
    new-instance v13, Lcom/android/vending/billing/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 392
    .local v13, "result":Lcom/android/vending/billing/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 406
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/android/vending/billing/util/IabResult;
    :catch_0
    move-exception v9

    .line 407
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 409
    invoke-virtual {p0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 411
    new-instance v13, Lcom/android/vending/billing/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 412
    .restart local v13    # "result":Lcom/android/vending/billing/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto/16 :goto_0

    .line 396
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/android/vending/billing/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 397
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 398
    move/from16 v0, p4

    iput v0, p0, Lcom/android/vending/billing/util/IabHelper;->mRequestCode:I

    .line 399
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchaseListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 400
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 401
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 401
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 414
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 415
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 417
    invoke-virtual {p0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 419
    new-instance v13, Lcom/android/vending/billing/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 420
    .restart local v13    # "result":Lcom/android/vending/billing/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 343
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vending/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/android/vending/billing/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/vending/billing/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/billing/util/IabException;
        }
    .end annotation

    .prologue
    .line 522
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/billing/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/android/vending/billing/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/android/vending/billing/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/vending/billing/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/billing/util/IabException;
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 541
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 543
    :try_start_0
    new-instance v1, Lcom/android/vending/billing/util/Inventory;

    invoke-direct {v1}, Lcom/android/vending/billing/util/Inventory;-><init>()V

    .line 544
    .local v1, "inv":Lcom/android/vending/billing/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/android/vending/billing/util/IabHelper;->queryPurchases(Lcom/android/vending/billing/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 545
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 546
    new-instance v3, Lcom/android/vending/billing/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    .end local v1    # "inv":Lcom/android/vending/billing/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/vending/billing/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/android/vending/billing/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 550
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/vending/billing/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/android/vending/billing/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 551
    if-eqz v2, :cond_1

    .line 552
    new-instance v3, Lcom/android/vending/billing/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    .end local v1    # "inv":Lcom/android/vending/billing/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 577
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/android/vending/billing/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 557
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/android/vending/billing/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/vending/billing/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 558
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/android/vending/billing/util/IabHelper;->queryPurchases(Lcom/android/vending/billing/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 559
    if-eqz v2, :cond_2

    .line 560
    new-instance v3, Lcom/android/vending/billing/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 563
    :cond_2
    if-eqz p1, :cond_3

    .line 564
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/vending/billing/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/android/vending/billing/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 565
    if-eqz v2, :cond_3

    .line 566
    new-instance v3, Lcom/android/vending/billing/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/android/vending/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 571
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 639
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 640
    return-void
.end method

.method public queryInventoryAsync(ZLcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 644
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 609
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 610
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 611
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 612
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/billing/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper$2;-><init>(Lcom/android/vending/billing/util/IabHelper;ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 635
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 636
    return-void
.end method

.method queryPurchases(Lcom/android/vending/billing/util/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/android/vending/billing/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 855
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 856
    const/4 v12, 0x0

    .line 857
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 860
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vending/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 864
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/vending/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 865
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 866
    if-eqz v8, :cond_1

    .line 867
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 912
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 870
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 871
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 872
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 873
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 874
    const/16 v8, -0x3ea

    goto :goto_0

    .line 877
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 879
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 881
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 884
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    .line 885
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 886
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 887
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 888
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/vending/billing/util/IabHelper;->isTestSku(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vending/billing/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/android/vending/billing/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 889
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 890
    new-instance v5, Lcom/android/vending/billing/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/android/vending/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .local v5, "purchase":Lcom/android/vending/billing/util/Purchase;
    invoke-virtual {v5}, Lcom/android/vending/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 893
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 894
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 898
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/vending/billing/util/Inventory;->addPurchase(Lcom/android/vending/billing/util/Purchase;)V

    .line 884
    .end local v5    # "purchase":Lcom/android/vending/billing/util/Purchase;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 901
    :cond_6
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 902
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 903
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 904
    const/4 v12, 0x1

    goto :goto_2

    .line 908
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_7
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 910
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 912
    if-eqz v12, :cond_8

    const/16 v13, -0x3eb

    :goto_3
    move v8, v13

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_3
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/android/vending/billing/util/Inventory;Ljava/util/List;)I
    .locals 23
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/android/vending/billing/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/vending/billing/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 917
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 918
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 920
    if-eqz p3, :cond_1

    .line 921
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 922
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 923
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 928
    .end local v13    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 929
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 930
    const/4 v10, 0x0

    .line 980
    :goto_1
    return v10

    .line 934
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 937
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 938
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_4

    .line 939
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 941
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 943
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 945
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v6, :cond_6

    .line 946
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 948
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 950
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 954
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 955
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 959
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 960
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/vending/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 961
    .local v10, "response":I
    if-eqz v10, :cond_8

    .line 962
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSkuDetails() failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/android/vending/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 965
    :cond_8
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 966
    const/16 v10, -0x3ea

    goto/16 :goto_1

    .line 970
    .end local v10    # "response":I
    :cond_9
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 973
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 974
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/android/vending/billing/util/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/android/vending/billing/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .local v4, "d":Lcom/android/vending/billing/util/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got sku details: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/vending/billing/util/Inventory;->addSkuDetails(Lcom/android/vending/billing/util/SkuDetails;)V

    goto :goto_5

    .line 980
    .end local v4    # "d":Lcom/android/vending/billing/util/SkuDetails;
    .end local v9    # "querySkus":Landroid/os/Bundle;
    .end local v11    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "skuDetails":Landroid/os/Bundle;
    .end local v16    # "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "thisResponse":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public startSetup(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 2

    .prologue
    return-void
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/vending/billing/util/IabHelper;->checkNotDisposed()V

    .line 308
    iget-boolean v0, p0, Lcom/android/vending/billing/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
