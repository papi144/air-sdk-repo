.class Lcom/adobe/air/wand/view/WandViewFlipper$2;
.super Ljava/lang/Object;
.source "WandViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/wand/view/WandViewFlipper;->loadDefaultView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/view/WandViewFlipper;


# direct methods
.method constructor <init>(Lcom/adobe/air/wand/view/WandViewFlipper;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$000(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 210
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v0, v2}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$102(Lcom/adobe/air/wand/view/WandViewFlipper;I)I

    .line 214
    const-string v0, ""

    .line 215
    iget-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$200(Lcom/adobe/air/wand/view/WandViewFlipper;)Lcom/adobe/air/wand/view/WandView$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$200(Lcom/adobe/air/wand/view/WandViewFlipper;)Lcom/adobe/air/wand/view/WandView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView$Listener;->getConnectionToken()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$400(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0136

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$400(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    iget-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$200(Lcom/adobe/air/wand/view/WandViewFlipper;)Lcom/adobe/air/wand/view/WandView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/air/wand/view/WandView$Listener;->getConnectionToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$500(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    iget-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$2;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    invoke-static {v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$100(Lcom/adobe/air/wand/view/WandViewFlipper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->setDisplayedChild(I)V

    .line 226
    return-void

    :cond_1
    move v1, v2

    .line 223
    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
