.class public Lcom/distriqt/extension/inappbilling/util/FREImageUtils;
.super Ljava/lang/Object;
.source "FREImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawBitmapToBitmapData(Landroid/graphics/Bitmap;Lcom/adobe/fre/FREBitmapData;)V
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapData"    # Lcom/adobe/fre/FREBitmapData;

    .prologue
    .line 63
    const/4 v6, 0x0

    .line 64
    .local v6, "encodingBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 65
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    .line 66
    .local v7, "paint":Landroid/graphics/Paint;
    const/16 v9, 0x14

    new-array v0, v9, [F

    fill-array-data v0, :array_0

    .line 73
    .local v0, "bgrToRgbColorTransform":[F
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 74
    .local v4, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 79
    .local v3, "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 80
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .local v2, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .end local v7    # "paint":Landroid/graphics/Paint;
    .local v8, "paint":Landroid/graphics/Paint;
    :try_start_2
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 84
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 88
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 89
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .end local v8    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    move-object v1, v2

    .line 95
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "paint":Landroid/graphics/Paint;
    :catch_2
    move-exception v5

    move-object v7, v8

    .end local v8    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1

    .line 66
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getFREObjectAsBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "object"    # Lcom/adobe/fre/FREBitmapData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 35
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 36
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 37
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V

    .line 42
    const/16 v6, 0x14

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 49
    .local v0, "bgrToRgbColorTransform":[F
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 50
    .local v4, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 52
    .local v3, "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56
    invoke-virtual {v2, v1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    return-object v1

    .line 42
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
