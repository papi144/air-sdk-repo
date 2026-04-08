.class public Lcom/distriqt/extension/inappbilling/events/ExtensionEvent;
.super Ljava/lang/Object;
.source "ExtensionEvent.java"


# static fields
.field public static ERROR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "extension:error"

    sput-object v0, Lcom/distriqt/extension/inappbilling/events/ExtensionEvent;->ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
