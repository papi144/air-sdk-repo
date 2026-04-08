.class Lcom/aiwu/Splash$1;
.super Ljava/util/TimerTask;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aiwu/Splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aiwu/Splash;

.field private final synthetic val$localIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/aiwu/Splash;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aiwu/Splash$1;->this$0:Lcom/aiwu/Splash;

    iput-object p2, p0, Lcom/aiwu/Splash$1;->val$localIntent:Landroid/content/Intent;

    .line 39
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aiwu/Splash$1;->this$0:Lcom/aiwu/Splash;

    iget-object v1, p0, Lcom/aiwu/Splash$1;->val$localIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/aiwu/Splash;->startActivity(Landroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/aiwu/Splash$1;->this$0:Lcom/aiwu/Splash;

    invoke-virtual {v0}, Lcom/aiwu/Splash;->finish()V

    .line 44
    return-void
.end method
