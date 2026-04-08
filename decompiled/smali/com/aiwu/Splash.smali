.class public Lcom/aiwu/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private AiwuInjectSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ZipPath"    # Ljava/lang/String;
    .param p3, "OutPath"    # Ljava/lang/String;
    .param p4, "SaveNo"    # I

    .prologue
    .line 134
    const-string v19, "25az"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 135
    .local v17, "sp":Landroid/content/SharedPreferences;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "FirstStart"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 137
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 138
    .local v3, "EditorSp":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "FirstStart"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 149
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 154
    .local v6, "SaveData":Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v7, "SaveDataByte":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v10

    .local v10, "count":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_3

    .line 159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 160
    .local v9, "bs":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 161
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v13, v0, :cond_4

    .line 164
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6    # "SaveData":Ljava/io/InputStream;
    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    .restart local v6    # "SaveData":Ljava/io/InputStream;
    new-instance v18, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    .local v18, "zip":Ljava/util/zip/ZipInputStream;
    const/16 v16, 0x0

    .line 168
    .local v16, "localFile":Ljava/io/File;
    const/4 v15, 0x0

    .line 169
    .local v15, "localDirectory":Ljava/io/File;
    const-string v5, ""

    .line 171
    .local v5, "FilePath":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 172
    .local v4, "Entry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_5

    .line 173
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V

    .line 209
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V

    .line 210
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V

    .line 214
    .end local v3    # "EditorSp":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "Entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "FilePath":Ljava/lang/String;
    .end local v6    # "SaveData":Ljava/io/InputStream;
    .end local v7    # "SaveDataByte":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "bs":[B
    .end local v10    # "count":I
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "i":I
    .end local v15    # "localDirectory":Ljava/io/File;
    .end local v16    # "localFile":Ljava/io/File;
    .end local v18    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_2
    :goto_3
    return-void

    .line 157
    .restart local v3    # "EditorSp":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "SaveData":Ljava/io/InputStream;
    .restart local v7    # "SaveDataByte":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "count":I
    .restart local v12    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v6    # "SaveData":Ljava/io/InputStream;
    .end local v7    # "SaveDataByte":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "count":I
    :catch_0
    move-exception v11

    .line 212
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 162
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "SaveData":Ljava/io/InputStream;
    .restart local v7    # "SaveDataByte":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bs":[B
    .restart local v10    # "count":I
    .restart local v13    # "i":I
    :cond_4
    :try_start_1
    aget-byte v19, v9, v13

    xor-int/lit8 v19, v19, 0x19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v9, v13

    .line 161
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 176
    .restart local v4    # "Entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "FilePath":Ljava/lang/String;
    .restart local v15    # "localDirectory":Ljava/io/File;
    .restart local v16    # "localFile":Ljava/io/File;
    .restart local v18    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_5
    new-instance v16, Ljava/io/File;

    .end local v16    # "localFile":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v16    # "localFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 181
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 183
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 187
    new-instance v15, Ljava/io/File;

    .end local v15    # "localDirectory":Ljava/io/File;
    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v15    # "localDirectory":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_7

    .line 190
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_7
    const/16 v19, 0x800

    :try_start_2
    move/from16 v0, v19

    new-array v8, v0, [B

    .line 194
    .local v8, "arrayOfByte":[B
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 195
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v20, 0x800

    .line 194
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 197
    .local v14, "localBufferedOutputStream":Ljava/io/BufferedOutputStream;
    :goto_4
    const/16 v19, 0x0

    const/16 v20, 0x800

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v8, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v13

    .line 198
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_8

    .line 199
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 200
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_2

    .line 205
    .end local v8    # "arrayOfByte":[B
    .end local v14    # "localBufferedOutputStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v19

    goto/16 :goto_2

    .line 203
    .restart local v8    # "arrayOfByte":[B
    .restart local v14    # "localBufferedOutputStream":Ljava/io/BufferedOutputStream;
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v8, v0, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private GetAssetsImage(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 5
    .param p1, "ImagePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "localImageView":Landroid/widget/ImageView;
    :try_start_0
    invoke-virtual {p0}, Lcom/aiwu/Splash;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "localImageView":Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .line 79
    .restart local v1    # "localImageView":Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .local v0, "localIOException":Ljava/io/IOException;
    move-object v1, v2

    .line 81
    goto :goto_0
.end method


# virtual methods
.method public getStartCount(Landroid/content/Context;)I
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 20
    const-string v2, "25az"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "StartCount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 22
    .local v0, "StartCount":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "StartCount"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    const-string v2, "iSFeN"

    const-string v3, "/data/data/air.thix.sciencesense.chemist/"

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v4}, Lcom/aiwu/Splash;->AiwuInjectSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v1}, Lcom/aiwu/Splash;->getStartCount(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/aiwu/Splash;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    .line 27
    const/16 v5, 0x400

    .line 26
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 28
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/aiwu/Splash;->requestWindowFeature(I)Z

    .line 30
    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v17, "localRelativeLayout":Landroid/widget/RelativeLayout;
    const-string v3, "#00a0e9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 35
    const-string v3, "25az.bin"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/aiwu/Splash;->GetAssetsImage(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v15

    .line 36
    .local v15, "aiwuLogo":Landroid/widget/ImageView;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v12, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v12, "Logoparams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const-string v3, "25az_loading.bin"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/aiwu/Splash;->GetAssetsImage(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v11

    .line 41
    .local v11, "LoadingImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/aiwu/Splash;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 42
    .local v10, "DeviceWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/aiwu/Splash;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 44
    .local v9, "DeviceHeight":I
    if-ge v10, v9, :cond_1

    .line 46
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v10, 0x7

    div-int/lit8 v4, v10, 0x7

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v18, "params":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v3, v10, 0x2

    div-int/lit8 v4, v10, 0xe

    sub-int v13, v3, v4

    .line 48
    .local v13, "MarginsLeft":I
    int-to-double v3, v9

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v14, v3

    .line 49
    .local v14, "MarginsTop":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 67
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/aiwu/Splash;->setContentView(Landroid/view/View;)V

    .line 71
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    .line 73
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 74
    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 72
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 75
    .local v2, "Animation_Loading":Landroid/view/animation/RotateAnimation;
    const-wide/16 v3, 0xdac

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 76
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    new-instance v16, Landroid/content/Intent;

    const-class v3, Lair/thix/sciencesense/chemist/AppEntry;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v16, "localIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/aiwu/Splash$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/aiwu/Splash$1;-><init>(Lcom/aiwu/Splash;Landroid/content/Intent;)V

    .line 86
    const-wide/16 v5, 0x9c4

    .line 78
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 87
    return-void

    .line 54
    .end local v2    # "Animation_Loading":Landroid/view/animation/RotateAnimation;
    .end local v13    # "MarginsLeft":I
    .end local v14    # "MarginsTop":I
    .end local v16    # "localIntent":Landroid/content/Intent;
    .end local v18    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v9, 0x8

    div-int/lit8 v4, v9, 0x8

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .restart local v18    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v3, v10, 0x2

    div-int/lit8 v4, v9, 0x10

    sub-int v13, v3, v4

    .line 56
    .restart local v13    # "MarginsLeft":I
    int-to-double v3, v9

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v14, v3

    .line 57
    .restart local v14    # "MarginsTop":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 58
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
