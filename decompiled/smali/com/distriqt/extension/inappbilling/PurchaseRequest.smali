.class public Lcom/distriqt/extension/inappbilling/PurchaseRequest;
.super Ljava/lang/Object;
.source "PurchaseRequest.java"


# instance fields
.field public applicationUsername:Ljava/lang/String;

.field public developerPayload:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public quantity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->productId:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->quantity:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->developerPayload:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "[%s, %d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->productId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/distriqt/extension/inappbilling/PurchaseRequest;->quantity:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
