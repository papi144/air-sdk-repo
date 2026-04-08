.class public Lcom/distriqt/extension/inappbilling/util/ImageConversion;
.super Ljava/lang/Object;
.source "ImageConversion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BGRA_TO_ARGB(I)I
    .locals 3
    .param p0, "bgra"    # I

    .prologue
    .line 122
    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p0, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/high16 v2, -0x1000000

    or-int v0, v1, v2

    .line 128
    .local v0, "argb":I
    return v0
.end method

.method public static JPEG_TO_RGB([B[BII)V
    .locals 16
    .param p0, "argb"    # [B
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v3, 0x800

    move/from16 v0, p2

    if-gt v0, v3, :cond_0

    const/16 v3, 0x800

    move/from16 v0, p3

    if-le v0, v3, :cond_1

    .line 78
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Image is too large to store in memory"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 82
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 86
    .local v1, "image":Landroid/graphics/Bitmap;
    mul-int v3, p2, p3

    new-array v2, v3, [I

    .line 87
    .local v2, "buffer":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v4, p2

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 89
    const/4 v9, 0x0

    .line 91
    .local v9, "a":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    .line 93
    mul-int v13, p2, v11

    .line 94
    .local v13, "k":I
    const/4 v12, 0x0

    .local v12, "j":I
    move v10, v9

    .end local v9    # "a":I
    .local v10, "a":I
    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_2

    .line 96
    add-int v3, v13, v12

    aget v15, v2, v3

    .line 98
    .local v15, "pixel":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "a":I
    .restart local v9    # "a":I
    and-int/lit16 v3, v15, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v10

    .line 99
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "a":I
    .restart local v10    # "a":I
    shr-int/lit8 v3, v15, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v9

    .line 100
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "a":I
    .restart local v9    # "a":I
    shr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v10

    .line 101
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "a":I
    .restart local v10    # "a":I
    shr-int/lit8 v3, v15, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v9

    .line 94
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 91
    .end local v15    # "pixel":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v9, v10

    .end local v10    # "a":I
    .restart local v9    # "a":I
    goto :goto_0

    .line 116
    .end local v12    # "j":I
    .end local v13    # "k":I
    :cond_3
    return-void
.end method

.method public static YUV_NV21_TO_RGB([B[BII)V
    .locals 22
    .param p0, "argb"    # [B
    .param p1, "yuv"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 37
    mul-int v9, p2, p3

    .line 39
    .local v9, "frameSize":I
    const/4 v12, 0x0

    .line 40
    .local v12, "ii":I
    const/4 v13, 0x0

    .line 41
    .local v13, "ij":I
    const/4 v7, 0x1

    .line 42
    .local v7, "di":I
    const/4 v8, 0x1

    .line 44
    .local v8, "dj":I
    const/4 v2, 0x0

    .line 45
    .local v2, "a":I
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v5, 0x0

    .local v5, "ci":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_8

    .line 47
    const/4 v14, 0x0

    .local v14, "j":I
    const/4 v6, 0x0

    .local v6, "cj":I
    move v3, v2

    .end local v2    # "a":I
    .local v3, "a":I
    :goto_1
    move/from16 v0, p2

    if-ge v14, v0, :cond_7

    .line 49
    mul-int v19, v5, p2

    add-int v19, v19, v6

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 50
    .local v18, "y":I
    shr-int/lit8 v19, v5, 0x1

    mul-int v19, v19, p2

    add-int v19, v19, v9

    and-int/lit8 v20, v6, -0x2

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x0

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 51
    .local v17, "v":I
    shr-int/lit8 v19, v5, 0x1

    mul-int v19, v19, p2

    add-int v19, v19, v9

    and-int/lit8 v20, v6, -0x2

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 52
    .local v16, "u":I
    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    const/16 v18, 0x10

    .line 54
    :cond_0
    const v19, 0x3f94fdf4    # 1.164f

    add-int/lit8 v20, v18, -0x10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const v20, 0x3fcc49ba    # 1.596f

    add-int/lit8 v21, v17, -0x80

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v15, v0

    .line 55
    .local v15, "r":I
    const v19, 0x3f94fdf4    # 1.164f

    add-int/lit8 v20, v18, -0x10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const v20, 0x3f5020c5    # 0.813f

    add-int/lit8 v21, v17, -0x80

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    const v20, 0x3ec83127    # 0.391f

    add-int/lit8 v21, v16, -0x80

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v10, v0

    .line 56
    .local v10, "g":I
    const v19, 0x3f94fdf4    # 1.164f

    add-int/lit8 v20, v18, -0x10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const v20, 0x400126e9    # 2.018f

    add-int/lit8 v21, v16, -0x80

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v4, v0

    .line 58
    .local v4, "b":I
    if-gez v15, :cond_4

    const/4 v15, 0x0

    .line 59
    :cond_1
    :goto_2
    if-gez v10, :cond_5

    const/4 v10, 0x0

    .line 60
    :cond_2
    :goto_3
    if-gez v4, :cond_6

    const/4 v4, 0x0

    .line 64
    :cond_3
    :goto_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "a":I
    .restart local v2    # "a":I
    int-to-byte v0, v4

    move/from16 v19, v0

    aput-byte v19, p0, v3

    .line 65
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "a":I
    .restart local v3    # "a":I
    int-to-byte v0, v10

    move/from16 v19, v0

    aput-byte v19, p0, v2

    .line 66
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "a":I
    .restart local v2    # "a":I
    int-to-byte v0, v15

    move/from16 v19, v0

    aput-byte v19, p0, v3

    .line 67
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "a":I
    .restart local v3    # "a":I
    const/16 v19, -0x1

    aput-byte v19, p0, v2

    .line 47
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 58
    :cond_4
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v15, v0, :cond_1

    const/16 v15, 0xff

    goto :goto_2

    .line 59
    :cond_5
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v10, v0, :cond_2

    const/16 v10, 0xff

    goto :goto_3

    .line 60
    :cond_6
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v4, v0, :cond_3

    const/16 v4, 0xff

    goto :goto_4

    .line 45
    .end local v4    # "b":I
    .end local v10    # "g":I
    .end local v15    # "r":I
    .end local v16    # "u":I
    .end local v17    # "v":I
    .end local v18    # "y":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    move v2, v3

    .end local v3    # "a":I
    .restart local v2    # "a":I
    goto/16 :goto_0

    .line 71
    .end local v6    # "cj":I
    .end local v14    # "j":I
    :cond_8
    return-void
.end method
