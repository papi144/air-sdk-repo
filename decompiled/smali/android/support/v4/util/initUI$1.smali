.class Landroid/support/v4/util/initUI$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/initUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/util/initUI;


# direct methods
.method constructor <init>(Landroid/support/v4/util/initUI;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {}, Landroid/support/v4/util/initUI;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/support/v4/util/initUI;->a(Landroid/support/v4/util/initUI;Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {}, Landroid/support/v4/util/initUI;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v1}, Landroid/support/v4/util/initUI;->a(Landroid/support/v4/util/initUI;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v1}, Landroid/support/v4/util/initUI;->a(Landroid/support/v4/util/initUI;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v12, :cond_0

    const-string v1, ""

    const-string v8, ""

    const-string v3, ""

    const-string v1, ""

    array-length v6, v5

    move v4, v0

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    :goto_1
    if-ge v4, v6, :cond_7

    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AzAXfhfVC0BEzJNu8nwU7g=="

    iget-object v11, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v11}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v9, v2

    if-ne v9, v12, :cond_1

    aget-object v1, v2, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    move-object v2, v3

    move-object v3, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v8, v3

    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "huniOdYRoxU="

    iget-object v11, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v11}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v9, v2

    if-ne v9, v12, :cond_b

    aget-object v8, v2, v7

    move-object v2, v8

    :goto_3
    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "uiFzZiDB+egGQE/UuFvbtQ=="

    iget-object v11, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v11}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v9, v2

    if-ne v9, v12, :cond_a

    aget-object v3, v2, v7

    move-object v2, v3

    :goto_4
    move-object v3, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "6P5IXRY7dMs="

    iget-object v11, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v11}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v9, v2

    if-ne v9, v12, :cond_5

    aget-object v2, v2, v7

    :cond_5
    move-object v2, v3

    move-object v3, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "qTwN8U4lrd2wK6mA7g/lsQ=="

    iget-object v11, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v11}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v9, v2

    if-ne v9, v12, :cond_9

    aget-object v0, v2, v7

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v2}, Landroid/support/v4/util/initUI;->c(Landroid/support/v4/util/initUI;)I

    move-result v2

    if-le v1, v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v1}, Landroid/support/v4/util/initUI;->c(Landroid/support/v4/util/initUI;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    move-object v2, v0

    :goto_5
    invoke-static {}, Landroid/support/v4/util/initUI;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JdoMiWPRAzMbFUv0MzIQxuj2JFuTB3A9"

    iget-object v5, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v5}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Dd2dUnS/ifA="

    iget-object v4, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v4}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/support/v4/util/initUI$1$1;

    invoke-direct {v4, p0}, Landroid/support/v4/util/initUI$1$1;-><init>(Landroid/support/v4/util/initUI$1;)V

    const-string v5, "nDxgZoDoRBmQ/V8Rf2DSkw=="

    iget-object v6, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v6}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/support/v4/util/initUI$1$2;

    invoke-direct {v6, p0, v8}, Landroid/support/v4/util/initUI$1$2;-><init>(Landroid/support/v4/util/initUI$1;Ljava/lang/String;)V

    invoke-static/range {v0 .. v7}, Landroid/support/v4/util/initUI;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "EcR//zwP+USFCxoG8MnQvw9ZQLbE0WEzinS8by0yOrc="

    iget-object v1, p0, Landroid/support/v4/util/initUI$1;->a:Landroid/support/v4/util/initUI;

    invoke-static {v1}, Landroid/support/v4/util/initUI;->b(Landroid/support/v4/util/initUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_2

    :cond_a
    move-object v2, v3

    goto/16 :goto_4

    :cond_b
    move-object v2, v8

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
