.class Lcom/distriqt/extension/inappbilling/InAppBillingController$1;
.super Ljava/lang/Object;
.source "InAppBillingController.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/InAppBillingController;->setup(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/InAppBillingController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/InAppBillingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/inappbilling/InAppBillingController;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/vending/billing/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    .line 110
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->access$000(Lcom/distriqt/extension/inappbilling/InAppBillingController;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/InAppBillingController;->setupComplete:Ljava/lang/Boolean;

    .line 115
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/InAppBillingController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingController;->access$000(Lcom/distriqt/extension/inappbilling/InAppBillingController;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
