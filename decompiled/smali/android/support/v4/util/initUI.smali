.class public Landroid/support/v4/util/initUI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/util/initUI$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ovu8u5e6i63klqs5/sbJgnCYYxG2nZz7bplBAWFHE4cqy2ResjLFo7LfLPvAQ7jpRi5OF3hRgnI="

    iput-object v0, p0, Landroid/support/v4/util/initUI;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/support/v4/util/initUI;->d:Ljava/lang/String;

    const-string v0, "csruipiy"

    iput-object v0, p0, Landroid/support/v4/util/initUI;->e:Ljava/lang/String;

    iput v1, p0, Landroid/support/v4/util/initUI;->f:I

    new-instance v0, Landroid/support/v4/util/initUI$1;

    invoke-direct {v0, p0}, Landroid/support/v4/util/initUI$1;-><init>(Landroid/support/v4/util/initUI;)V

    iput-object v0, p0, Landroid/support/v4/util/initUI;->g:Landroid/os/Handler;

    :try_start_0
    sput-object p1, Landroid/support/v4/util/initUI;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/util/initUI;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Landroid/support/v4/util/initUI;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/util/initUI;->c:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/util/initUI;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/util/initUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/util/initUI;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)J
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v4/util/initUI;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WKYRgcc5ED9U4QitD9SSawDCHcjC+b3O"

    iget-object v2, p0, Landroid/support/v4/util/initUI;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Landroid/support/v4/util/initUI;Landroid/content/Context;)J
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v4/util/initUI;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Landroid/support/v4/util/initUI;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/util/initUI;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/initUI;->b:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/util/initUI;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/util/initUI;->b:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/support/v4/util/initUI;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/support/v4/util/initUI$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/util/initUI$2;-><init>(Landroid/support/v4/util/initUI;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/util/initUI;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/initUI;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v4/util/initUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/initUI;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v4/util/initUI;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WKYRgcc5ED9U4QitD9SSawDCHcjC+b3O"

    iget-object v2, p0, Landroid/support/v4/util/initUI;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, ""

    if-eq p3, v1, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const-string v1, ""

    if-eq p5, v1, :cond_1

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Landroid/support/v4/util/initUI;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/util/initUI;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Landroid/support/v4/util/initUI;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/util/initUI;->f:I

    return v0
.end method

.method private c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "fz9dpM19QnY="

    iget-object v1, p0, Landroid/support/v4/util/initUI;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/util/initUI$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Landroid/support/v4/util/initUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/initUI;->g:Landroid/os/Handler;

    return-object v0
.end method
