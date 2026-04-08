.class public Lcom/distriqt/extension/inappbilling/InAppBillingExtension;
.super Ljava/lang/Object;
.source "InAppBillingExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static ID:Ljava/lang/String;

.field public static context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.distriqt.inappbilling"

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->ID:Ljava/lang/String;

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
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;-><init>()V

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 34
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->ID:Ljava/lang/String;

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->ID:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    .line 36
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispose()V

    .line 45
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 46
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
