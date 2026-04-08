.class public Lcom/adobe/air/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sRuntimePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetExternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLayoutViewFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    const-string v1, "layout"

    sget-object v2, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 234
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method public static GetLibCorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, "libCore.so"

    invoke-static {p0, v0}, Lcom/adobe/air/utils/Utils;->GetNativeLibraryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLibSTLPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "libstlport_shared.so"

    invoke-static {p0, v0}, Lcom/adobe/air/utils/Utils;->GetNativeLibraryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetNativeExtensionPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 314
    sget-object v2, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 315
    const-class v2, Landroid/content/pm/ApplicationInfo;

    const-string v3, "nativeLibraryDir"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 316
    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string v4, "sourceDir"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 318
    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    const-string v2, "/system/app/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 324
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 346
    :cond_0
    return-object v0

    .line 328
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static GetNativeLibraryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 269
    sget-object v2, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 270
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v3, "nativeLibraryDir"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 271
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v4, "sourceDir"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 273
    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    const-string v4, "/system/app/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 279
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 302
    :cond_0
    return-object v0

    .line 283
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    const-string v0, "string"

    sget-object v1, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSharedDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetTelemetrySettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 351
    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 360
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    :try_start_2
    invoke-static {v0, v2}, Lcom/adobe/air/utils/Utils;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 363
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 372
    if-eqz v0, :cond_0

    .line 373
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 374
    :cond_0
    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .line 381
    :goto_0
    if-nez v0, :cond_2

    .line 387
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 388
    const-string v2, "telemetry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 389
    const-string v2, "content"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 397
    :cond_2
    :goto_1
    return-object v0

    .line 376
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 379
    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 372
    :goto_2
    if-eqz v0, :cond_3

    .line 373
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 374
    :cond_3
    if-eqz v2, :cond_4

    .line 375
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    move-object v0, v1

    .line 378
    goto :goto_0

    .line 376
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 379
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 372
    :goto_3
    if-eqz v1, :cond_5

    .line 373
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 374
    :cond_5
    if-eqz v2, :cond_6

    .line 375
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 378
    :cond_6
    :goto_4
    throw v0

    .line 391
    :catch_3
    move-exception v1

    goto :goto_1

    .line 376
    :catch_4
    move-exception v1

    goto :goto_4

    .line 371
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 365
    :catch_5
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v3

    goto :goto_2
.end method

.method public static GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 227
    const-string v0, "id"

    sget-object v1, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static KillProcess()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 80
    return-void
.end method

.method public static ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 212
    new-array v2, v1, [C

    .line 213
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 214
    const/16 v3, 0x2a

    aput-char v3, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 216
    return-object v0
.end method

.method public static copyTo(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 143
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-static {v3, v4}, Lcom/adobe/air/utils/Utils;->copyTo(Ljava/io/File;Ljava/io/File;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 150
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    invoke-static {v0, v1}, Lcom/adobe/air/utils/Utils;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 153
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 155
    :cond_1
    return-void
.end method

.method public static copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 161
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public static getRuntimePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static hasCaptiveRuntime()Z
    .locals 2

    .prologue
    .line 73
    const-string v0, "com.adobe.air"

    sget-object v1, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 402
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 404
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 406
    const/4 v0, 0x0

    .line 409
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 412
    :cond_0
    return v0
.end method

.method public static native nativeConnectDebuggerSocket(Ljava/lang/String;)Z
.end method

.method public static parseKeyValuePairFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/adobe/air/utils/Utils;->parseKeyValuePairFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static parseKeyValuePairFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 186
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    new-instance v2, Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 190
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 199
    return-object v0
.end method

.method public static setRuntimePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/adobe/air/utils/Utils;->sRuntimePackageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static writeBufferToFile(Ljava/lang/StringBuffer;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 170
    return-void
.end method

.method public static writeOut(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 116
    invoke-static {p0, v0}, Lcom/adobe/air/utils/Utils;->writeThrough(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 118
    return-void
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 205
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 207
    return-void
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 98
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    const/4 v1, 0x0

    array-length v4, v2

    invoke-virtual {v3, v2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 100
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static writeThrough(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method
