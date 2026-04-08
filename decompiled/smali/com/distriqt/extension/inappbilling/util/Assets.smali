.class public Lcom/distriqt/extension/inappbilling/util/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    const-string v6, "/"

    const-string v7, "_"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "assetFileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 42
    .local v5, "soundOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 43
    .local v1, "assetInputStream":Ljava/io/InputStream;
    const/16 v6, 0x4000

    new-array v2, v6, [B

    .line 44
    .local v2, "buffer":[B
    const/4 v4, 0x0

    .line 45
    .local v4, "length":I
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 47
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0    # "assetFileName":Ljava/lang/String;
    .end local v1    # "assetInputStream":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "soundOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v6, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 49
    .restart local v0    # "assetFileName":Ljava/lang/String;
    .restart local v1    # "assetInputStream":Ljava/io/InputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "length":I
    .restart local v5    # "soundOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 52
    .end local v1    # "assetInputStream":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "soundOutputStream":Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method public static listAssets(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 83
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/distriqt/extension/inappbilling/util/Assets;->listAssetsInDirectory(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static listAssetsInDirectory(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 9
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    const-string v3, "images"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "webkit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sounds"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "META-INF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 101
    const-string v3, "Assets"

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aget-object v8, v1, v2

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "/"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/distriqt/extension/inappbilling/util/Assets;->listAssetsInDirectory(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_2
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 105
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
