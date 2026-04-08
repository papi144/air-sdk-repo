.class Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;
.super Ljava/lang/Object;
.source "ConsumePurchaseListener.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->onQueryInventoryFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;->this$0:Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabResult;)V
    .locals 4
    .param p1, "purchase"    # Lcom/android/vending/billing/util/Purchase;
    .param p2, "result"    # Lcom/android/vending/billing/util/IabResult;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;->this$0:Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->access$000(Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;->this$0:Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->access$000(Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lcom/android/vending/billing/util/Purchase;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener$1;->this$0:Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;->access$000(Lcom/distriqt/extension/inappbilling/listeners/ConsumePurchaseListener;)Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/android/vending/billing/util/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-interface {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/util/IEventDispatcher;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
