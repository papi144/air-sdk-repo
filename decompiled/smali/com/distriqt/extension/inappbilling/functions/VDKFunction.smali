.class public Lcom/distriqt/extension/inappbilling/functions/VDKFunction;
.super Ljava/lang/Object;
.source "VDKFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 206
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 207
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 208
    .local v1, "sha1hash":[B
    invoke-direct {p0, v1}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private containsId([Ljava/lang/String;I)Z
    .locals 3
    .param p1, "details"    # [Ljava/lang/String;
    .param p2, "extensionId"    # I

    .prologue
    .line 141
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 145
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    .local v0, "extIdNumber":I
    if-ne v0, p2, :cond_0

    .line 147
    const/4 v2, 0x1

    .line 151
    .end local v0    # "extIdNumber":I
    :goto_1
    return v2

    .line 149
    :catch_0
    move-exception v2

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private convertToHex([B)Ljava/lang/String;
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v7, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, p1, v6

    .line 216
    .local v0, "b":B
    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 217
    .local v2, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 220
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v2, :cond_0

    const/16 v5, 0x9

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    and-int/lit8 v2, v0, 0xf

    .line 223
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 214
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 220
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    .line 225
    .end local v0    # "b":B
    .end local v2    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v0    # "b":B
    .restart local v2    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method private matchAppId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "keyId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "appIdL":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "keyIdL":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v3

    .line 163
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".debug"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    const/4 v3, 0x3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "air"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->matchAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 169
    :cond_2
    const-string v3, "(\\.)([0-9])"

    const-string v5, "$1A$2"

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    const-string v6, "_"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "modId":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    invoke-direct {p0, p1, v2}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->matchAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 173
    goto :goto_0
.end method

.method private removePadding([B)[B
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, "startIndex":I
    :goto_0
    aget-byte v4, p1, v3

    if-nez v4, :cond_0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_0
    aget-byte v4, p1, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    aget-byte v4, p1, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 185
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 186
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 188
    aget-byte v4, p1, v2

    if-nez v4, :cond_4

    .line 192
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 195
    .end local v2    # "k":I
    :cond_3
    array-length v4, p1

    sub-int/2addr v4, v3

    new-array v0, v4, [B

    .line 196
    .local v0, "cleaned":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, p1

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_5

    .line 198
    add-int v4, v3, v1

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    .end local v0    # "cleaned":[B
    .end local v1    # "i":I
    .restart local v2    # "k":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "k":I
    .restart local v0    # "cleaned":[B
    .restart local v1    # "i":I
    :cond_5
    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 25
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 41
    const-string v9, ""

    .line 42
    .local v9, "developerKey":Ljava/lang/String;
    const/4 v12, -0x1

    .line 43
    .local v12, "extensionId":I
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 46
    .local v21, "success":Ljava/lang/Boolean;
    const-string v16, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxYaXDdu7Jr6PRciuK0oOj+Eg5gNeFxDvRpXxjm8L7Md3bYA0Dq361W58SZ3udgUIRqx/czLBiq2fEp2eAcz1WHCJ7rHxo9j8/FyDZhcW7ENmRaLh+x1bqhymA/5xTnVJNDxV2pigUiwe0/EWW+1TMXQrIFYQnWndeGJsg+0Q4D1oSr3r7RbJzy/ZWdJwAVR8jaFcXQftq758lwKtJ/MhLiCp3ZhETtZQQXND6/1FhWu8yvOhzGfWJzPlHS+mPI9ph5XTD6zQ/9Ze2bWFZ/XRxisRhOcgNbuO2cB730jkrOE3+FkA2kd/gN49dRXtl1D2MNmuKQXHJl2dIfSCNsjR0QIDAQAB"

    .line 59
    .local v16, "keyString":Ljava/lang/String;
    const/16 v23, 0x0

    :try_start_0
    aget-object v23, p2, v23

    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 60
    const/16 v23, 0x1

    aget-object v23, p2, v23

    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    .line 70
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x28

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 78
    const/16 v23, 0x0

    const/16 v24, 0x28

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "hash":Ljava/lang/String;
    const/16 v23, 0x28

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "dataString":Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v5, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 83
    .local v4, "dataEncoded":[B
    const-string v23, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v15

    .line 84
    .local v15, "keyBytes":[B
    const-string v23, "RSA"

    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v23

    new-instance v24, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual/range {v23 .. v24}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v17

    .line 85
    .local v17, "publicKey":Ljava/security/PublicKey;
    const-string v23, "RSA"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 86
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "decrpytedData":[B
    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->removePadding([B)[B

    move-result-object v6

    .line 91
    new-instance v7, Ljava/lang/String;

    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-direct {v7, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    .local v7, "decrpytedDataString":Ljava/lang/String;
    const-string v23, "\\|"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "details":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 96
    const/16 v23, 0x0

    aget-object v22, v8, v23

    .line 97
    .local v22, "type":Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v14, v8, v23

    .line 99
    .local v14, "key":Ljava/lang/String;
    const-string v23, "s"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->matchAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->containsId([Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 105
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    .line 126
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "dataEncoded":[B
    .end local v5    # "dataString":Ljava/lang/String;
    .end local v6    # "decrpytedData":[B
    .end local v7    # "decrpytedDataString":Ljava/lang/String;
    .end local v8    # "details":[Ljava/lang/String;
    .end local v13    # "hash":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyBytes":[B
    .end local v17    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    const/16 v20, 0x0

    .line 129
    .local v20, "result":Lcom/adobe/fre/FREObject;
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v20

    .line 130
    check-cast p1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :goto_2
    return-object v20

    .line 107
    .end local v20    # "result":Lcom/adobe/fre/FREObject;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "dataEncoded":[B
    .restart local v5    # "dataString":Ljava/lang/String;
    .restart local v6    # "decrpytedData":[B
    .restart local v7    # "decrpytedDataString":Ljava/lang/String;
    .restart local v8    # "details":[Ljava/lang/String;
    .restart local v13    # "hash":Ljava/lang/String;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "keyBytes":[B
    .restart local v17    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "type":Ljava/lang/String;
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :cond_1
    :try_start_3
    const-string v23, "t"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 110
    .local v18, "now":J
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 111
    .local v10, "expiry":J
    cmp-long v23, v10, v18

    if-lez v23, :cond_0

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->containsId([Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 113
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/distriqt/extension/inappbilling/functions/VDKFunction;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 114
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v21

    goto :goto_1

    .line 132
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "dataEncoded":[B
    .end local v5    # "dataString":Ljava/lang/String;
    .end local v6    # "decrpytedData":[B
    .end local v7    # "decrpytedDataString":Ljava/lang/String;
    .end local v8    # "details":[Ljava/lang/String;
    .end local v10    # "expiry":J
    .end local v13    # "hash":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyBytes":[B
    .end local v17    # "publicKey":Ljava/security/PublicKey;
    .end local v18    # "now":J
    .end local v22    # "type":Ljava/lang/String;
    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    .restart local v20    # "result":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v23

    goto :goto_2

    .line 119
    .end local v20    # "result":Lcom/adobe/fre/FREObject;
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :catch_1
    move-exception v23

    goto :goto_1

    .line 62
    :catch_2
    move-exception v23

    goto/16 :goto_0
.end method
