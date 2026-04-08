.class public Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;
.super Landroid/app/Activity;
.source "ProductViewActivity.java"


# static fields
.field public static final REQUEST_CODE:I = 0x3036

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    sget-object v0, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult(%d,%d,...)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const-string v1, "productview:dismissed"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;->finish()V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v3, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    const/16 v3, 0x3036

    invoke-virtual {p0, v1, v3}, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    sget-object v3, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    if-eqz v3, :cond_0

    .line 51
    sget-object v3, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const-string v4, "productview:displayed"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
