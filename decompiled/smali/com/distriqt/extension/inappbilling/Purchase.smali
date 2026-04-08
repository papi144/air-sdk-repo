.class public Lcom/distriqt/extension/inappbilling/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# static fields
.field public static final STATE_CANCELLED:Ljava/lang/String; = "transaction:cancelled"

.field public static final STATE_DEFERRED:Ljava/lang/String; = "transaction:deferred"

.field public static final STATE_FAILED:Ljava/lang/String; = "transaction:failed"

.field public static final STATE_NOTALLOWED:Ljava/lang/String; = "transaction:notallowed"

.field public static final STATE_PURCHASED:Ljava/lang/String; = "transaction:purchased"

.field public static final STATE_PURCHASING:Ljava/lang/String; = "transaction:purchasing"

.field public static final STATE_REFUNDED:Ljava/lang/String; = "transaction:refunded"

.field public static final STATE_REMOVED:Ljava/lang/String; = "transaction:removed"

.field public static final STATE_RESTORED:Ljava/lang/String; = "transaction:restored"

.field public static final STATE_UNKNOWN:Ljava/lang/String; = "transaction:unknown"


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public originalMessage:Ljava/lang/String;

.field public originalPurchase:Lcom/distriqt/extension/inappbilling/Purchase;

.field public productId:Ljava/lang/String;

.field public quantity:I

.field public signature:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;

.field public transactionReceipt:Ljava/lang/String;

.field public transactionState:Ljava/lang/String;

.field public transactionTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->productId:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->quantity:I

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->transactionTimestamp:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->transactionId:Ljava/lang/String;

    .line 39
    const-string v0, "transaction:unknown"

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->transactionState:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->transactionReceipt:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/Purchase;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->developerPayload:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->signature:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->originalMessage:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->error:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/Purchase;->errorCode:Ljava/lang/String;

    return-void
.end method
