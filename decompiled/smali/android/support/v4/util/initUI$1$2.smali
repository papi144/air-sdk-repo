.class Landroid/support/v4/util/initUI$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/util/initUI$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/support/v4/util/initUI$1;


# direct methods
.method constructor <init>(Landroid/support/v4/util/initUI$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iput-object p2, p0, Landroid/support/v4/util/initUI$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v0, v0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {}, Landroid/support/v4/util/initUI;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "qIMu+Q/PM/eUM/tWb4Wp8A=="

    iget-object v3, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v3, v3, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v3}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/initUI;->a(Landroid/support/v4/util/initUI;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "qIMu+Q/PM/eUM/tWb4Wp8A=="

    iget-object v3, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v3, v3, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v3}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "qIMu+Q/PM/ehu0DRdrd9L9d2CpDWNliJO4mU/Y+bywUaZW5Ikrg0WKxvlfUludHh"

    iget-object v4, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v4, v4, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v4}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "L/lsxBvPKYrOQ8UtPpNy9X7r11oR7UsK"

    iget-object v2, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v2, v2, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v2}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/util/initUI$1$2;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/support/v4/util/initUI;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ovu8u5e6i63klqs5/sbJgm0EeFW5MLDSSJX+IvnMV+SUdx3ytVXWhQ=="

    iget-object v2, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v2, v2, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v2}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/util/initUI$1$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "twXJYU2/GJ9XokK5aBsF1uSK/HEUuQKKSG0XH1VfB08="

    iget-object v3, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v3, v3, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v3}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "twXJYU2/GJ9w7g8mReV1W/TWVlBrBEWmCT6F4lRts5pCPTYRWR0iIA=="

    iget-object v3, p0, Landroid/support/v4/util/initUI$1$2;->b:Landroid/support/v4/util/initUI$1;

    iget-object v3, v3, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v3}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Landroid/support/v4/util/initUI;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
